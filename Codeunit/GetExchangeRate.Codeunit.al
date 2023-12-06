codeunit 50145 GetExchangeRate
{
    procedure GetExchangeRate(Currency: Record Currency)
    var
        GeneralLedgerSetup: Record "General Ledger Setup";

        HttpClient: HttpClient;
        HttpResponse: HttpResponseMessage;
        ResponseText: Text;
        Url: Text;

    begin
        GeneralLedgerSetup.FindFirst();

        Url := StrSubstNo('http://api.fixer.io/lates?base=%1&symbols=%2', GeneralLedgerSetup.GetCurrencyCode(''), Currency.Code);

        if HttpClient.Get(Url, HttpResponse) then begin
            HttpResponse.Content.ReadAs(ResponseText);
            Message(ResponseText);
        end;
    end;
}