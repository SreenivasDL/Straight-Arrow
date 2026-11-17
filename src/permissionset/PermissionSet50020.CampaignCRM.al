permissionset 50020 "Campaign CRM"
{
    Assignable = true;
    Caption = 'Campaign CRM Integration';

    Permissions =
        codeunit "Campaign CRM Integration" = X,
        tabledata "CDS Campaign" = RIMD,
        tabledata Campaign = RIMD,
        tabledata "Integration Table Mapping" = RIMD,
        tabledata "Integration Field Mapping" = RIMD;
}