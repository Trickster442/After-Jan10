page 50471 artist_table_list_page
{
    Caption = 'Artist table ko list page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = artist_table;

    layout
    {
        area(Content)
        {
            repeater(groups)
            {
                field(Artist_ID; Rec.Artist_ID)
                {
                    ApplicationArea = All;

                }
                field(Manager_NAME; Rec.Manager_NAME)
                {
                    ApplicationArea = All;

                }
                field(Charge; Rec.Charge)
                {
                    ApplicationArea = All;

                }
                field(Gender; Rec.Gender)
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