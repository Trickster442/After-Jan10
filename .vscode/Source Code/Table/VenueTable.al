table 50430 venue_table
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; venue_ID; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(10; Description; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Acc_QTY; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; Country; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";

        }
    }

    keys
    {
        key(Key1; venue_ID)
        {
            Clustered = true;
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