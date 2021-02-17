pageextension 50001 "CustomerList_Extn_50001" extends "Customer List"
{
    layout
    {
        addafter("Payments (LCY)")
        {
            field("Cryo Type"; Rec."Cryo Type")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Cryo Type';
            }
            field("Cryo Storage Start Month"; Rec."Cryo Storage Start Month")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Cryo Storage Start Month';
            }
            field("Special Pricing"; Rec."Special Pricing")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Special Pricing';
            }
            field("Destruction In Process"; Rec."Destruction In Process")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Destruction In Process';
            }
            field("Vials Retrieved/Desctroyed"; Rec."Vials Retrieved/Destroyed")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'All vials retrieved/destroyed';
            }
            field("File Sent to Storage"; Rec."File Sent to Storage")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'File Sent to Storage';
            }
            field("Referral Source"; Rec."Referral Source")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Referral Source';
            }
            field("Date of Birth"; Rec."Date of Birth")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Date of Birth';
            }
            field("Recipient Appeal"; Rec."Recipient Appeal")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Recipient Appeal';
            }
            field("Mailing List"; Rec."Mailing List")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Mailing List';
            }
            field("Sibling Storage Start Month"; Rec."Sibling Storage Start Month")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sibling Storage Start Month';
            }
            field("Original Bill Due Date"; Rec."Original Bill Due Date")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Original Bill Due Date';
            }
            field("Final Letter Due Date"; Rec."Final Letter Due Date")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Final Letter Due Date';
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}