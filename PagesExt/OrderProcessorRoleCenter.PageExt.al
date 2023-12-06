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
                    // CaptionML = ENU = 'Book List', FRA = 'Liste des livres';
                    Caption = 'Book List';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page BookList;
                }
                action("Customer List")
                {
                    // CaptionML = ENU = 'Customer List', FRA = 'Liste des clients';
                    Caption = 'Customer List';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page "Customer List";
                }
                action("Currency List")
                {
                    // CaptionML = ENU = 'Customer List', FRA = 'Liste des clients';
                    Caption = 'Currency List';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page Currencies;
                }
                action("ALIssue List")
                {
                    // CaptionML = ENU = 'Customer List', FRA = 'Liste des clients';
                    Caption = 'ALIssue List';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page ALIssueList;
                }
                action("Company Info")
                {
                    // CaptionML = ENU = 'Customer List', FRA = 'Liste des clients';
                    Caption = 'Company Info';
                    Image = Setup;
                    ApplicationArea = All;
                    RunObject = page CompanyInfoWizard;
                }


            }
        }
    }


}