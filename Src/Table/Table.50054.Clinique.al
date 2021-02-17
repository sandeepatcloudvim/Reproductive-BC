table 50054 Clinique
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Clinique Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Clinique Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Address 1"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Address';
        }
        field(4; "Address 2"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "City"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "State"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Email"; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Post Code"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Phone No."; Text[80])
        {
            DataClassification = ToBeClassified;
            Caption = 'Telephone';
        }
    }

    keys
    {
        key(PK; "Clinique Code")
        {
            Clustered = true;
        }

    }
    fieldgroups
    {
        fieldgroup(DropDown; "Clinique Code", "Clinique Name")
        {

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