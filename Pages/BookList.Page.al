page 50148 BookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Book;
    CardPageId = BookCard;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;
                    ToolTip = 'No.';
                }
                field(Title; Rec.Title)
                {
                    Caption = 'No.';
                    ToolTip = 'Title';
                    ApplicationArea = All;

                }
                field(Author; Rec.Author)
                {
                    Caption = 'No.';
                    ToolTip = 'Author';
                    ApplicationArea = All;

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(RunWrapper)
            {
                Caption = 'Run .Net Wrapper';
                ToolTip = 'RunWrapper';
                Image = Absence;
                ApplicationArea = All;
                RunObject = codeunit DotNetWrappers;
            }
        }
    }
}