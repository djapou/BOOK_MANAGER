pageextension 50100 OrderProcessorRoleCenter extends "Order Processor Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addlast(sections)
        {
            group("Book Manager")
            {
                Caption = 'Book Manager';
                action("Book List")
                {
                    CaptionML = ENU = 'Book List', FRA = 'Liste des livres';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page BookList;
                }
                action("Customer List")
                {
                    CaptionML = ENU = 'Customer List', FRA = 'Liste des clients';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page "Customer List";
                }

            }
        }
    }


}