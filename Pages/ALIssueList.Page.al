page 50147 ALIssueList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ALIssue;
    Editable = false;
    SourceTableView = order(descending);

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(number; Rec.number)
                {
                    Caption = 'number';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the number field.';
                }
                field(title; Rec.title)
                {
                    Caption = 'title';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the title field.';
                }
                field(created_at; Rec.created_at)
                {
                    Caption = 'created_at';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the created_at field.';
                }
                field(user; Rec.user)
                {
                    Caption = 'user';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the user field.';
                }
                field(state; Rec.state)
                {
                    Caption = 'state';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the state field.';
                }
                field(html_url; Rec.html_url)
                {
                    Caption = 'html_url';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the html_url field.';
                }
            }
        }
        // area(Factboxes)
        // {

        // }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction();
    //             begin

    //             end;
    //         }
    //     }
    // }
}