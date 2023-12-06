pageextension 50146 CurrencyListExt extends Currencies
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("Exch. &Rates")
        {
            action(GetExchangeRate)
            {
                Caption = 'Get Exchange Rate';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                ToolTip = 'Get exchange rate';

                trigger OnAction()
                var
                    GetExchangeRate: Codeunit GetExchangeRate;
                begin
                    GetExchangeRate.GetExchangeRate(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}