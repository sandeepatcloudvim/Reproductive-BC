tableextension 50000 Customer_Extn_50000 extends Customer
{
    /*
    Reproductive_BC16        
    CBR SS 2020-09-04 - Added new customized fields to Customer table.
    */
    fields
    {
        field(50000; "Cryo Type"; Code[20])
        {
            Caption = 'Cryo Type';
            DataClassification = CustomerContent;
            TableRelation = "Cryo Types";
        }
        field(50001; "Cryo Storage Start Month"; Enum "Cryo Storage Start Month")
        {
            Caption = 'Cryo Storage Start Month';
            DataClassification = CustomerContent;
        }
        field(50002; "Special Pricing"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Special Pricing';
        }
        field(50003; "Destruction In Process"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Destruction In Process';
        }
        field(50004; "Vials Retrieved/Destroyed"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'All Vials Retrieved/Destroyed';
        }
        field(50005; "File Sent to Storage"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'File Sent to Storage';
        }
        field(50006; "Comments 1"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Comments-1-Cryo';
        }
        field(50007; "Comments 2"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Comments-2-Cryo';
        }
        field(50008; "Original Bill Due Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Original Bill Due Date';
        }
        field(50009; "Options Letter Due Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Options Letter Due Date';
        }
        field(50010; "Send Final Letter On/After"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Send Final Letter On/After';
        }
        field(50011; "Final Letter Due Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Final Letter Due Date';
        }
        field(50012; "1st Call On/After"; Date)
        {
            DataClassification = CustomerContent;
            Caption = '1st Call On/After';
        }
        field(50013; "Call Notes-1-Overdue"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Call Notes-1-Overdue';
        }
        field(50014; "Send Collect Warning On/After"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Send Collect Warning On/After';
        }
        field(50015; "Collections Warning Due"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Collections Warning Due';
        }
        field(50016; "2nd Call On/After"; Date)
        {
            DataClassification = CustomerContent;
            Caption = '2nd Call On/After';
        }
        field(50017; "Call Notes-2-Overdue"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Call Notes-2-Overdue';
        }
        field(50018; "Last Effort On/After"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Effort On/After';
        }
        field(50019; "Last Effort Notes"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Last Effort Notes';
        }
        field(50020; "Send to Collections On/After"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Send to Collections On/After';
        }
        field(50021; "Final Outcome"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Final Outcome';
            TableRelation = "Final Outcome";
        }
        field(50022; "Outcome Notes"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Outcome Notes';
        }
        field(50023; "Referral Source"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Referral Source';
            TableRelation = "Referral Source";
        }
        field(50024; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birth';
        }
        field(50025; "Recipient Appeal"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Recipient Appeal';
        }
        field(50026; "Mailing List"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Mailing List';
            TableRelation = "Mailing List";

        }
        field(50027; "Email Address-Recipient"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Email Address-Recipient';
        }
        field(50028; "Sibling Storage Start Month"; Enum "Sibling Storage Start Month")
        {
            DataClassification = CustomerContent;
            Caption = 'Sibling Storage Start Month';
        }
        field(50029; "Clinique Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Clinique Code';
            TableRelation = Clinique;

            trigger OnValidate()
            var
            begin
                UpdateShiptoAddress(Rec);
            end;
        }
    }

    var
        myInt: Integer;
        recShiptoAddress: Record "Ship-to Address";
        recClinique: Record Clinique;

    procedure UpdateShiptoAddress(recCustomer: Record Customer)
    var
    begin
        if recClinique.Get(recCustomer."Clinique Code") then begin

            recShiptoAddress.Init();
            recShiptoAddress."Customer No." := recCustomer."No.";
            recShiptoAddress.Code := recClinique."Clinique Code";
            recShiptoAddress.Name := recClinique."Clinique Name";
            recShiptoAddress.Address := recClinique."Address 1";
            recShiptoAddress."Address 2" := recClinique."Address 2";
            recShiptoAddress.City := recClinique.City;
            recShiptoAddress.County := recClinique.State;
            recShiptoAddress."Post Code" := recClinique."Post Code";
            recShiptoAddress."E-Mail" := recClinique.Email;
            recShiptoAddress."Phone No." := recClinique."Phone No.";
            recShiptoAddress.Insert(false);

        end;
    end;
}