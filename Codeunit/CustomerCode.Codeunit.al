codeunit 50149 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer: Record Customer; ExtraMessage: Text)
    var
        new_customerLbl: Label 'WHO!! we have a new cutomer %1!!\\ %2', Comment = 'new customer';
    begin
        Message(new_customerLbl, MyCustomer."No.", ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CelebrateCustomer(Rec, 'Congratulations from the codeunit !');
    end;
}