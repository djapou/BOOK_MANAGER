codeunit 50144 RefreshALIssueCode
{
    procedure Refresh()
    var
        ALIssue: Record ALIssue;
        HttpClient: HttpClient;
        ResponseMessage: HttpResponseMessage;
        JsonToken: JsonToken;
        JsonValue: JsonValue;
        JsonObject: JsonObject;
        JsonArray: JsonArray;
        JsonText: Text;
    // i: Integer;
    begin
        ALIssue.DeleteAll();

        //Simple web service call
        HttpClient.DefaultRequestHeaders.Add('User-Agent', 'Dynamics 365');
        if not HttpClient.Get('https://api.github.com/repos/Microsoft/AL/issues', ResponseMessage) then
            Error('The call to the web service failed.');

        if not ResponseMessage.IsSuccessStatusCode then begin
            Error('The web service returned an error message:\\' +
                 'Status code: %1\' +
                 'Description: %2',
                 ResponseMessage.HttpStatusCode,
                 ResponseMessage.ReasonPhrase);

            ResponseMessage.Content.ReadAs(JsonText);

        end;

        // Process JSON response
        if not JsonArray.ReadFrom(JsonText) then
            Error('Invalid response, expected an Json array as root object');

        foreach JsonToken in JsonArray do begin
            JsonObject := JsonToken.AsObject();

            ALIssue.Init();
            if not JsonObject.Get('id', JsonToken) then
                Error('Could not find a token with key %1');

            ALIssue.id := JsonToken.AsValue().AsInteger();

            ALIssue.number := GetJsonToken(JsonObject, 'number').AsValue().AsInteger();
            ALIssue.title := GetJsonToken(JsonObject, 'title').AsValue().AsText();
            ALIssue.created_at := GetJsonToken(JsonObject, 'created_at').AsValue().AsDateTime();
            ALIssue.user := SelectJsonToken(JsonObject, '$.user.login').AsValue().AsText();
            ALIssue.state := GetJsonToken(JsonObject, 'state').AsValue().AsText();
            ALIssue.html_url := GetJsonToken(JsonObject, 'html_url').AsValue().AsText();
            ALIssue.Insert();
        end;

    end;

    procedure GetJsonToken(JsonObject: JsonObject; TokenKey: Text) JsonToken: JsonToken
    begin
        if not JsonObject.Get(TokenKey, JsonToken) then
            Error('Could not find a token with key %1', TokenKey);
    end;

    procedure SelectJsonToken(JsonObject: JsonObject; Path: Text) JsonToken: JsonToken
    begin
        if not JsonObject.SelectToken(Path, JsonToken) then
            Error('Could not find a token with path %1', Path);
    end;
}