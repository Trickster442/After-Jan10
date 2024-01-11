page 50431 venueTable_List_page
{
    Caption = 'Venue Table ko List Page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = venue_table;

    layout
    {
        area(Content)
        {
            repeater(groups)
            {
                field(venue_ID; Rec.venue_ID)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Acc_QTY; Rec.Acc_QTY)
                {
                    ApplicationArea = All;

                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}