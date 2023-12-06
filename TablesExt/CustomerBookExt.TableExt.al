tableextension 50149 CustomerBookExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50149; "crnFavorite Book No."; Code[20])
        {
            Caption = 'Favorite Book No.';
            DataClassification = ToBeClassified;
            TableRelation = Book."No.";
        }
    }

    trigger OnAfterInsert()
    var
        CustomerCode: Codeunit CustomerCode;
    begin
        // Ceci soustrait avant le codeunit
        CustomerCode.CelebrateCustomer(Rec, 'Congratulations from the Table extension !');
    end;
}