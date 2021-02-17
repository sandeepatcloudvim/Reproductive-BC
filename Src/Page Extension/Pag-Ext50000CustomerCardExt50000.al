pageextension 50000 "CustomerCard_Extn_50000" extends "Customer Card"
{
    layout
    {
        modify(Address)
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify(City)
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify(County)
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("Post Code")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("E-Mail")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        modify("Phone No.")
        {
            ApplicationArea = All;
            ShowMandatory = true;
        }
        addafter("Shipping Advice")
        {
            field("Clinique Code"; Rec."Clinique Code")
            {
                ApplicationArea = All;
                Caption = 'Clinique Code';
                Importance = Additional;
            }
        }
        addafter(Shipping)
        {
            group("Cryo Storage")
            {
                Caption = 'Cryo Storage';

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
                field("Comments 1"; Rec."Comments 1")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Comments-1-Cryo';
                }
                field("Comments 2"; Rec."Comments 2")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Comments-2-Cryo';
                }
            }
            group("Recipient Info")
            {
                Caption = 'Recipient Info';
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
                field("Email Address-Recipient"; Rec."Email Address-Recipient")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Email Address-Recipient';
                }
                field("Sibling Storage Start Month"; Rec."Sibling Storage Start Month")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sibling Storage Start Month';
                }
            }
            group("Overdue Info")
            {
                Caption = 'Overdue Info';

                field("Original Bill Due Date"; Rec."Original Bill Due Date")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Original Bill Due Date';
                }
                field("Options Letter Due Date"; Rec."Options Letter Due Date")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Options Letter Due Date';
                }
                field("Send Final Letter On/After"; Rec."Send Final Letter On/After")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send Final Letter On/After';
                }
                field("Final Letter Due Date"; Rec."Final Letter Due Date")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Final Letter Due Date';
                }
                field("1st Call On/After"; Rec."1st Call On/After")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = '1st Call On/After';
                }
                field("Call Notes-1-Overdue"; Rec."Call Notes-1-Overdue")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Call Notes-1-Overdue';
                }
                field("Send Collect Warning On/After"; Rec."Send Collect Warning On/After")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send Collect Warning On/After';
                }
                field("Collections Warning Due"; Rec."Collections Warning Due")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Collections Warning Due';
                }
                field("2nd Call On/After"; Rec."2nd Call On/After")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = '2nd Call On/After';
                }
                field("Call Notes-2-Overdue"; Rec."Call Notes-2-Overdue")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Call Notes-2-Overdue';
                }
                field("Last Effort On/After"; Rec."Last Effort On/After")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Last Effort On/After';
                }
                field("Last Effort Notes"; Rec."Last Effort Notes")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Last Effort Notes';
                }
                field("Send to Collections On/After"; Rec."Send to Collections On/After")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send to Collections On/After';
                }
                field("Final Outcome"; Rec."Final Outcome")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Final Outcome';
                }
                field("Outcome Notes"; Rec."Outcome Notes")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Outcome Notes';
                }
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