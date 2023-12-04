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
                action("Customer Bank Account List")
                {
                    CaptionML = ENU = 'Customer Bank Account List', FRA = 'Liste des Comptes bancaire clients';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page "Customer Bank Account List";
                }

            }
        }
    }


}