pageextension 50119 "Campaign Mapping Ext" extends "Integration Table Mapping List"
{
    actions
    {
        addlast(processing)
        {
            action(CreateCampaignMapping)
            {
                ApplicationArea = All;
                Caption = 'Create Campaign Mapping';
                Image = Setup;

                trigger OnAction()
                var
                    CampaignCRMIntegration: Codeunit "Campaign CRM Integration";
                begin
                    CampaignCRMIntegration.CreateCampaignMapping();
                    CurrPage.Update(false);
                end;
            }
        }
    }
}