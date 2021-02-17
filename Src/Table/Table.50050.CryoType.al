table 50050 "Cryo Types"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Cryo Types";
    DataCaptionFields = "Cryo Type", "Cryo Description";

    fields
    {
        field(1; "Cryo Type"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Cryo Description"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Cryo Type")
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