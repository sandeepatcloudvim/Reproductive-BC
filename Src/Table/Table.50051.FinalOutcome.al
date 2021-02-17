table 50051 "Final Outcome"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Final Outcomes";
    DataCaptionFields = "Final Outcome", "Final Outcome Description";

    fields
    {
        field(1; "Final Outcome"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Final Outcome Description"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Final Outcome")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}