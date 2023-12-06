table 50148 ALIssue
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Integer)
        {
            Caption = 'id';
            DataClassification = ToBeClassified;

        }
        field(2; number; Integer)
        {
            Caption = 'number';
            DataClassification = ToBeClassified;

        }
        field(3; title; Text[250])
        {
            Caption = 'title';
            DataClassification = ToBeClassified;

        }
        field(4; created_at; DateTime)
        {
            Caption = 'created_at';
            DataClassification = ToBeClassified;

        }
        field(5; user; Text[50])
        {
            Caption = 'user';
            DataClassification = ToBeClassified;

        }
        field(6; state; Text[30])
        {
            Caption = 'state';
            DataClassification = ToBeClassified;

        }
        field(7; html_url; Text[250])
        {
            Caption = 'html_url';
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; id)
        {
            Clustered = true;
        }
    }

}