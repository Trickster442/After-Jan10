page 50476 concertManagement_Table_card
{
    Caption = 'concertManagement_Table ko card page';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = concertManagement_Table;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Concert_ID; Rec.Concert_ID)
                {
                    ApplicationArea = All;

                }
                field(Venue; Rec.Venue)
                {
                    ApplicationArea = All;

                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;

                }
                field(Artist; Rec.Artist)
                {
                    ApplicationArea = All;

                }
                field(Manager_name; Rec.Manager_name)
                {
                    ApplicationArea = All;

                }
                field(Charge; Rec.Charge)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    

    var
        myInt: Integer;
}