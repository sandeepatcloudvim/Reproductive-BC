page 50050 "Cryo Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Cryo Types";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Cryo Type"; Rec."Cryo Type")
                {
                    ApplicationArea = All;
                }
                field("Cryo Description"; Rec."Cryo Description")
                {
                    ApplicationArea = All;
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