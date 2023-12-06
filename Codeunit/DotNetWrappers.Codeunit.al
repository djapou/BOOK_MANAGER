codeunit 50146 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo();
        ListDemo();
    end;

    procedure TextDemo()
    var
        myText: Text;
        myTextBuilder: TextBuilder;
    begin
        myTextBuilder.AppendLine('We can append lines');
        myTextBuilder.Append('..or just add characters ');
        myTextBuilder.AppendLine('to the current line');
        myTextBuilder.AppendLine('some text');
        myTextBuilder.Replace('some text', 'replaced some other text');
        //Ici mytest prend la valeur de textbuilder transformer en text
        myText := myTextBuilder.ToText();

        myText := myText.ToUpper();

        Message(myText);

    end;

    procedure ListDemo()
    var
        CustomerNames: List of [Text];
    begin
        CustomerNames.Add('Bill');
        CustomerNames.Add('Arnold');
        CustomerNames.Add('Junior');

        if CustomerNames.Contains('Arnold') then
            Message('Arnold is on the list');


        // On recupere le le nom de la premiere index
        Message('Name at index 1: ' + CustomerNames.Get(1));
        PrintCustomerNames(CustomerNames); // Imprime la liste entiere

    end;

    // Impression des noms des clients
    procedure PrintCustomerNames(CustomerNames: List of [Text])
    var
        CustomerName: Text;
    begin
        foreach CustomerName in CustomerNames do begin
            Message(CustomerName);
            CountCharactersInCustomerName(CustomerName);
        end;
    end;

    procedure CountCharactersInCustomerName(CustomerName: Text)
    var
        LetterCounter: Dictionary of [Char, Integer];
        i: Integer;
        c: Integer;
    begin
        Clear(LetterCounter);
        for i := 1 to StrLen(CustomerName) do
            if LetterCounter.Get(CustomerName[i], c) then
                LetterCounter.Set(CustomerName[i], c + 1)
            else
                LetterCounter.Set(CustomerName[i], 1);

        if LetterCounter.Get('1', c) then
            Message('The name %1 has the letter L %2 times', CustomerName, Format(c));
    end;
}