codeunit 50063 "Campaign CRM Integration"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CDS Setup Defaults", 'OnAfterResetConfiguration', '', false, false)]
    local procedure OnAfterResetConfiguration(CDSConnectionSetup: Record "CDS Connection Setup")
    begin
        CreateCampaignMapping();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CRM Setup Defaults", 'OnAfterResetConfiguration', '', false, false)]
    local procedure OnAfterResetCRMConfiguration(CRMConnectionSetup: Record "CRM Connection Setup")
    begin
        CreateCampaignMapping();
    end;

    procedure CreateCampaignMapping()
    var
        IntegrationTableMapping: Record "Integration Table Mapping";
        IntegrationFieldMapping: Record "Integration Field Mapping";
        CDSCampaign: Record "CDS Campaign";
        Campaign: Record Campaign;
    begin
        IntegrationTableMapping.CreateRecord(
            'CAMPAIGN', Database::Campaign, Database::"CDS Campaign",
            CDSCampaign.FieldNo(CampaignId), CDSCampaign.FieldNo(ModifiedOn),
            '', '', false,
            IntegrationTableMapping.Direction::Bidirectional, 'CRM');

        IntegrationFieldMapping.CreateRecord('CAMPAIGN', Campaign.FieldNo("No."),
            CDSCampaign.FieldNo(CodeName), IntegrationFieldMapping.Direction::ToIntegrationTable, '', true, false);
        IntegrationFieldMapping.CreateRecord('CAMPAIGN', Campaign.FieldNo(Description),
            CDSCampaign.FieldNo(Name), IntegrationFieldMapping.Direction::Bidirectional, '', true, false);
        IntegrationFieldMapping.CreateRecord('CAMPAIGN', Campaign.FieldNo("Starting Date"),
            CDSCampaign.FieldNo(ProposedStart), IntegrationFieldMapping.Direction::Bidirectional, '', true, false);
        IntegrationFieldMapping.CreateRecord('CAMPAIGN', Campaign.FieldNo("Ending Date"),
            CDSCampaign.FieldNo(ProposedEnd), IntegrationFieldMapping.Direction::Bidirectional, '', true, false);
    end;
}