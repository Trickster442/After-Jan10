table 50475 concertManagement_Table
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Concert_ID; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Venue; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = venue_table;
            trigger OnValidate()
            var
                Ven: Record venue_table;
                Cont: Record "Country/Region";
            begin
                if Ven.Get(Venue) then
                    if Cont.Get(Ven.Country) then
                        rec.Country := Cont.Name;

            end;

        }
        field(3; Country; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Artist; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = artist_table;
            trigger OnValidate()
            var
                ART: Record artist_table;
            begin
                if ART.Get(Artist) then
                    rec.Manager_name := ART.Manager_NAME;
            end;

        }
        field(5; Manager_name; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(6; Charge; Decimal)
        {
            // FieldClass = FlowField;
            // CalcFormula = lookup(artist_table.Charge where(Artist_ID = field(Artist)));
        }
    }

    keys
    {
        key(Key1; Concert_ID)
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