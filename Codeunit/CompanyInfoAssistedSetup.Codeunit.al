codeunit 50143 CompanyInfoAssistedSetup
{
    // [EventSubscriber(ObjectType::Table, Database::"Aggregated Assisted Setup", 'OnRegisterAssistedSetup', '', true, true)]
    // local procedure "AggregatedAssistedSetup.OnRegisterAssistedSetup"(var TempAggregatedAssistedSetup: Record "Aggregated Assisted Setup" temporary)
    // var
    //     CompanyInformation: Record "Company Information";
    // begin
    //     TempAggregatedAssistedSetup.AddExtensionAssistedSetup(PAGE::CompanyInfoWizard,
    //                                                             'Setup Company Information',
    //                                                             TRUE,
    //                                                             CompanyInformation.RecordId,
    //                                                             GetCompanyInformationSetupStatus(TempAggregatedAssistedSetup),
    //                                                             '');

    // end;

    // local procedure GetCompanyInformationSetupStatus(AggregatedAssistedSetup: Record "Aggregated Assisted Setup"): Integer
    // var
    //     CompanyInformation: Record "Company Information";
    // begin
    //     with AggregatedAssistedSetup do begin
    //         if CompanyInformation.Get() then
    //             if (CompanyInformation.Name = '') OR (CompanyInformation."E-Mail" = '') then
    //                 Status := Status::"Not Completed"
    //             else
    //                 Status := Status::Completed
    //         else
    //             Status := Status::"Not Completed";
    //         exit(Status);
    //     end;

    // end;
}

