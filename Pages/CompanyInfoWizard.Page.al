page 50146 CompanyInfoWizard
{
    Caption = 'Company Information';
    PageType = NavigatePage;
    SourceTable = "Company Information";
    // SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            group(StandardBanner)
            {
                ShowCaption = false;
                Editable = false;
                Visible = TopBannerVisible and not FinishActionEnabled;
                field(MediaResourcesStandard; MediaResourcesStandard."Media Reference")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ShowCaption = false;
                }
            }
            group(FinishedBanner)
            {
                ShowCaption = false;
                Editable = false;
                Visible = TopBannerVisible and FinishActionEnabled;
                field(MediaResourcesDone; MediaResourcesDone."Media Reference")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ShowCaption = false;
                }
            }

            group(Step1)
            {
                // Visible = Step1Visible;
                // group("Welcome to PageName")
                // {
                //     Caption = 'Welcome to PageName Setup';
                //     Visible = Step1Visible;
                //     group(Group18)
                //     {
                //         ShowCaption = false;
                //         InstructionalText = 'Step1 - Replace this text with some instructions.';
                //     }
                // }
                // group("Let's go!")
                // {
                //     Caption = 'Let''s go!';
                //     group(Group22)
                //     {
                //         ShowCaption = false;
                //         InstructionalText = 'Step1 - Replace this text with some more instructions.';
                //     }
                // }
                Visible = CurrentStep = 1;
                group(CompanyName)
                {
                    Caption = 'Company Name';
                    InstructionalText = 'Provide the name of your company';
                    field(Name; Rec.Name)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Name';
                        Caption = 'Name';
                    }
                }
            }

            group(Step2)
            {
                // ShowCaption = false;
                // InstructionalText = 'Step2 - Replace this text with some instructions.';
                // Visible = Step2Visible;
                //You might want to add fields here
                Visible = CurrentStep = 2;
                group(EmailAddress)
                {
                    Caption = 'Email Address';
                    InstructionalText = 'Provide the name of your company';
                    field("E-Mail"; Rec."E-Mail")
                    {
                        ApplicationArea = All;
                        ToolTip = 'E-Mail';
                        Caption = 'E-Mail';
                    }
                }
            }


            group(Step3)
            {
                // Visible = Step3Visible;
                // group(Group23)
                // {
                //     ShowCaption = false;
                //     InstructionalText = 'Step3 - Replace this text with some instructions.';
                // }
                // group("That's it!")
                // {
                //     Caption = 'That''s it!';
                //     group(Group25)
                //     {
                //         ShowCaption = false;
                //         InstructionalText = 'To save this setup, choose Finish.';
                //     }
                // }
                Visible = CurrentStep = 3;
                group(AllDone)
                {
                    Caption = 'All done';
                    InstructionalText = 'Thank you All information is now ready';

                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(ActionBack)
            {
                ApplicationArea = All;
                Caption = 'Back';
                Enabled = BackActionEnabled;
                Image = PreviousRecord;
                InFooterBar = true;

                trigger OnAction();
                begin
                    // NextStep(true);
                    TakeStep(-1);
                end;
            }
            action(ActionNext)
            {
                ApplicationArea = All;
                Caption = 'Next';
                Enabled = NextActionEnabled;
                Image = NextRecord;
                InFooterBar = true;
                trigger OnAction();
                begin
                    // NextStep(false);
                    TakeStep(1);
                end;
            }
            action(ActionFinish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                Enabled = FinishActionEnabled;
                Image = Approve;
                InFooterBar = true;
                trigger OnAction();
                begin
                    // FinishAction();
                    CurrPage.Close();
                end;
            }
        }
    }

    trigger OnInit();
    begin
        LoadTopBanners();
    end;

    trigger OnOpenPage();
    // var
    //     RecordVar: Record "Company Information";
    begin
        // Rec.Init();
        // if RecordVar.Get() then
        //     Rec.TransferFields(RecordVar);

        // Rec.Insert();

        // Step := Step::Start;
        // EnableControls();
        CurrentStep := 1;
        SetControls();
    end;

    var

        MediaRepositoryStandard: Record "Media Repository";
        MediaRepositoryDone: Record "Media Repository";
        MediaResourcesStandard: Record "Media Resources";
        MediaResourcesDone: Record "Media Resources";
        TopBannerVisible: Boolean;
        CurrentStep: Integer;
        BackActionEnabled: Boolean;
        FinishActionEnabled: Boolean;
        NextActionEnabled: Boolean;

    // Step: Option Start,Step2,Finish;
    // Step1Visible: Boolean;
    // Step2Visible: Boolean;
    // Step3Visible: Boolean;


    // local procedure EnableControls()
    // begin
    //     ResetControls();

    //     case Step of
    //         Step::Start:
    //             ShowStep1();
    //         Step::Step2:
    //             ShowStep2();
    //         Step::Finish:
    //             ShowStep3();
    //     end;
    // end;
    local procedure SetControls()
    begin
        BackActionEnabled := CurrentStep > 1;
        NextActionEnabled := CurrentStep < 3;
        FinishActionEnabled := CurrentStep = 3;
    end;

    // local procedure StoreRecordVar()
    // var
    //     RecordVar: Record "Company Information";
    // begin
    //     if not RecordVar.Get() then begin
    //         RecordVar.Init();
    //         RecordVar.Insert();
    //     end;

    //     RecordVar.TransferFields(Rec, false);
    //     RecordVar.Modify(true);
    // end;

    local procedure TakeStep(Step: Integer)
    begin
        CurrentStep += Step;
        SetControls();
    end;


    // local procedure FinishAction()
    // begin
    //     StoreRecordVar();
    //     CurrPage.Close();
    // end;

    // local procedure NextStep(Backwards: Boolean)
    // begin
    //     if Backwards then
    //         Step := Step - 1
    //     else
    //         Step := Step + 1;

    //     EnableControls();
    // end;

    // local procedure ShowStep1()
    // begin
    //     Step1Visible := true;

    //     FinishActionEnabled := false;
    //     BackActionEnabled := false;
    // end;

    // local procedure ShowStep2()
    // begin
    //     Step2Visible := true;
    // end;

    // local procedure ShowStep3()
    // begin
    //     Step3Visible := true;

    //     NextActionEnabled := false;
    //     FinishActionEnabled := true;
    // end;

    // local procedure ResetControls()
    // begin
    //     FinishActionEnabled := false;
    //     BackActionEnabled := true;
    //     NextActionEnabled := true;

    //     Step1Visible := false;
    //     Step2Visible := false;
    //     Step3Visible := false;
    // end;

    local procedure LoadTopBanners()
    begin
        if MediaRepositoryStandard.Get('AssistedSetup-NoText-400px.png', Format(CurrentClientType())) and
            MediaRepositoryDone.Get('AssistedSetupDone-NoText-400px.png', Format(CurrentClientType()))
        then
            if MediaResourcesStandard.Get(MediaRepositoryStandard."Media Resources Ref") and
                MediaResourcesDone.Get(MediaRepositoryDone."Media Resources Ref")
        then
                TopBannerVisible := MediaResourcesDone."Media Reference".HasValue();
    end;
}