table 50104 "A_B_C"
{
    DataClassification = ToBeClassified;
    Caption = 'ABC';


    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = TRUE;

        }
        field(2; "Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Phone Number"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Address."; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Qualification"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Email"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK1; "No.")
        {
            Clustered = true;
        }
        key(PK2; "Name")
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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