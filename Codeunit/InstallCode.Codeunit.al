codeunit 50148 InstallCode
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertBook('001', 'Rock your guitare', 'Len blender', 450);
        InsertBook('002', 'Bass in 5 minutes day', 'Bette treble', 227);

    end;

    local procedure InsertBook(BookNo: Code[20]; BookTitle: Text[50]; BookAuthor: Text[50]; BookPageCount: Integer)
    var
        Book: Record Book;
    begin
        with Book do begin
            // Si le nulero existe deja, alors on le cree plus
            if get(BookNo) then
                exit;

            "No." := BookNo;
            Author := BookAuthor;
            Title := BookTitle;
            "Page Count" := BookPageCount;
            Hardcover := true;

            Insert();
        end;
    end;
}