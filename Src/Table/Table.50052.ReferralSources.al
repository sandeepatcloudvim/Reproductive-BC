table 50052 "Referral Source"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Referral Sources";
    DataCaptionFields = "Referral Source";

    fields
    {
        field(1; "Referral Source"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Referral Source")
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