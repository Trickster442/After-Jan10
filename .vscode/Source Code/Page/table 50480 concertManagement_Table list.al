page 50477 concertManagement_Table_list
{
    Caption = 'concertManagement_Table ko list page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = concertManagement_Table;
    CardPageId = 50476;

    layout
    {
        area(Content)
        {
            repeater(groups)
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

    actions
    {
        area(Processing)
        {
            action(ChangeManager)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    change: Record concertManagement_Table;
                begin
                    change.Reset();
                    change.SetRange(Artist, '555');
                    if change.FindFirst() then
                        repeat
                            change.Manager_name := 'Blah Blah';
                            change.Modify();
                        until change.Next() = 0;

                end;
            }
            action(ChangeRate)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    rate: Record concertManagement_Table;
                begin
                    rate.Reset();
                    rate.SetRange(Manager_name, 'Blah Blah');
                    if rate.FindFirst() then
                        repeat
                            rate.Charge := 10000;
                            rate.Modify();
                        until rate.Next() = 0;

                end;
            }
        }
    }

}