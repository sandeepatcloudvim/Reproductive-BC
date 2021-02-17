table 50053 "Mailing List"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Mailing List";
    DataCaptionFields = "Mailing List";

    fields
    {
        field(1; "Mailing List"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Mailing List")
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