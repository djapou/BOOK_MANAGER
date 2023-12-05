page 50149 BookCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ToolTip = 'No.';
                    ApplicationArea = All;

                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Title';
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field(Author; Rec.Author)
                {
                    ToolTip = 'Author';
                    ApplicationArea = All;
                }
                field(Hardcover; Rec.Hardcover)
                {
                    ToolTip = 'Hardcover';
                    ApplicationArea = All;
                }
                field("Page Count"; Rec."Page Count")
                {
                    ToolTip = 'Page Count';
                    ApplicationArea = All;
                }
            }
        }
    }
}