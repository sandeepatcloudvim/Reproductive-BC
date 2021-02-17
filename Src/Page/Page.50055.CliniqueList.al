page 50055 "Clinique List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Clinique;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Clinique Code"; Rec."Clinique Code")
                {
                    ApplicationArea = All;

                }
                field("Clinique Name"; Rec."Clinique Name")
                {
                    ApplicationArea = All;

                }
                field("Address 1"; Rec."Address 1")
                {
                    ApplicationArea = All;
                    Caption = 'Address';

                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;

                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;

                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;

                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;

                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Telephone';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}