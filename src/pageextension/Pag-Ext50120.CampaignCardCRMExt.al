pageextension 50120 "Campaign Card CRM Ext" extends "Campaign Card"
{
    actions
    {
        addlast(processing)
        {
            group(DataverseGroup)
            {
                Caption = 'Dataverse';
                Image = Link;

                action(SyncCampaignNow)
                {
                    ApplicationArea = All;
                    Caption = 'Synchronize Now';
                    Image = Refresh;
                    ToolTip = 'Send the latest changes to Dataverse for this campaign.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.UpdateOneNow(Rec.RecordId);
                    end;
                }
                action(CreateCampaignInCRM)
                {
                    ApplicationArea = All;
                    Caption = 'Create Campaign in Dataverse';
                    Image = New;
                    ToolTip = 'Create a new Dataverse campaign from this record.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.CreateNewRecordsInCRM(Rec.RecordId);
                    end;
                }
                action(ManageCoupling)
                {
                    ApplicationArea = All;
                    Caption = 'Set Up Coupling';
                    Image = LinkAccount;
                    ToolTip = 'Link this campaign to an existing Dataverse campaign.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.DefineCoupling(Rec.RecordId);
                    end;
                }
            }
        }
    }
}