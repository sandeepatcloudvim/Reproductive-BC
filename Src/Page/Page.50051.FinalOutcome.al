page 50051 "Final Outcomes"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Final Outcome";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Final Outcome"; Rec."Final Outcome")
                {
                    ApplicationArea = All;

                }
                field("Final Outcome Description"; Rec."Final Outcome Description")
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