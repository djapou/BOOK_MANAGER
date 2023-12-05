pageextension 50147 CustomerCardBookExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("crnFavorite Book No."; Rec."crnFavorite Book No.")
            {
                ApplicationArea = All;
                ToolTip = 'Favorite Book No.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

}