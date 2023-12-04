pageextension 50100 OrderProcessorRoleCenter extends "Order Processor Role Center"
{
    // layout
    // {
    //     // Add changes to page layout here
    // }

    actions
    {
        // Add changes to page actions here
        addlast(sections)
        {
            group("Book Manager")
            {
                action("Customer List")
                {
                    ApplicationArea = All;
                    RunObject = page "Customer Bank Account List";
                }

            }
        }
    }


}