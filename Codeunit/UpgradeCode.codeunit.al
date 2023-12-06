codeunit 50147 UpgradeCode
{
    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    var
        Book: Record Book;
        Customer: Record Customer;
    begin
        Book.Reset();
        if not Book.FindFirst() then
            exit;

        // On applique le favorite book no pr tous les clients
        Customer.Reset();
        if not Customer.IsEmpty() then
            Customer.ModifyAll("crnFavorite Book No.", Book."No.");

    end;

}