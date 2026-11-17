table 50021 "CDS Campaign"
{
    ExternalName = 'campaign';
    TableType = CDS;
    Description = 'Container for campaign activities and responses, sales literature, products, and lists to create, plan, execute, and track the results of a specific marketing campaign through its life.';

    fields
    {
        field(10000; CampaignId; GUID)
        {
            ExternalName = 'campaignid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the campaign.';
            Caption = 'Campaign';
        }
        field(10001; CreatedOn; Datetime)
        {
            ExternalName = 'createdon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the record was created.';
            Caption = 'Created On';
        }
        field(10003; ModifiedOn; Datetime)
        {
            ExternalName = 'modifiedon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the record was modified.';
            Caption = 'Modified On';
        }
        field(10024; VersionNumber; BigInteger)
        {
            ExternalName = 'versionnumber';
            ExternalType = 'BigInt';
            ExternalAccess = Read;
            Description = 'Version Number';
            Caption = 'Version Number';
        }
        field(10025; EmailAddress; Text[100])
        {
            ExternalName = 'emailaddress';
            ExternalType = 'String';
            Description = 'The primary email address for the entity.';
            Caption = 'Email Address';
        }
        field(10026; ImportSequenceNumber; Integer)
        {
            ExternalName = 'importsequencenumber';
            ExternalType = 'Integer';
            ExternalAccess = Insert;
            Description = 'Sequence number of the import that created this record.';
            Caption = 'Import Sequence Number';
        }
        field(10027; OverriddenCreatedOn; Date)
        {
            ExternalName = 'overriddencreatedon';
            ExternalType = 'DateTime';
            ExternalAccess = Insert;
            Description = 'Date and time that the record was migrated.';
            Caption = 'Record Created On';
        }
        field(10028; TimeZoneRuleVersionNumber; Integer)
        {
            ExternalName = 'timezoneruleversionnumber';
            ExternalType = 'Integer';
            Description = 'For internal use only.';
            Caption = 'Time Zone Rule Version Number';
        }
        field(10029; UTCConversionTimeZoneCode; Integer)
        {
            ExternalName = 'utcconversiontimezonecode';
            ExternalType = 'Integer';
            Description = 'Time zone code that was in use when the record was created.';
            Caption = 'UTC Conversion Time Zone Code';
        }
        field(10030; Name; Text[128])
        {
            ExternalName = 'name';
            ExternalType = 'String';
            Description = 'Type a name for the campaign so that it is identified correctly in lists.';
            Caption = 'Name';
        }
        field(10031; ProcessId; GUID)
        {
            ExternalName = 'processid';
            ExternalType = 'Uniqueidentifier';
            Description = 'Contains the id of the process associated with the entity.';
            Caption = 'Process Id';
        }
        field(10032; StageId; GUID)
        {
            ExternalName = 'stageid';
            ExternalType = 'Uniqueidentifier';
            Description = 'Contains the id of the stage where the entity is located.';
            Caption = '(Deprecated) Stage Id';
        }
        field(10033; TraversedPath; Text[1250])
        {
            ExternalName = 'traversedpath';
            ExternalType = 'String';
            Description = 'A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.';
            Caption = '(Deprecated) Traversed Path';
        }
        field(10034; ActualEnd; Date)
        {
            ExternalName = 'actualend';
            ExternalType = 'DateTime';
            Description = 'Enter the date when the campaign was closed or completed.';
            Caption = 'Actual End Date';
        }
        field(10035; ActualStart; Date)
        {
            ExternalName = 'actualstart';
            ExternalType = 'DateTime';
            Description = 'Enter the actual start date and time for the campaign.';
            Caption = 'Actual Start Date';
        }
        field(10036; BudgetedCost; Decimal)
        {
            ExternalName = 'budgetedcost';
            ExternalType = 'Money';
            Description = 'Type the amount budgeted for the campaign to define a limit for how much you can spend.';
            Caption = 'Budget Allocated';
        }
        field(10039; ExchangeRate; Decimal)
        {
            ExternalName = 'exchangerate';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = 'Shows the conversion rate of the record''s currency. The exchange rate is used to convert all money fields in the record from the local currency to the system''s default currency.';
            Caption = 'Exchange Rate';
        }
        field(10040; BudgetedCost_Base; Decimal)
        {
            ExternalName = 'budgetedcost_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Budget Allocated in base currency.';
            Caption = 'Budget Allocated (Base)';
        }
        field(10041; CodeName; Text[32])
        {
            ExternalName = 'codename';
            ExternalType = 'String';
            ExternalAccess = Insert;
            Description = 'Type a number or other tracking code to identify the campaign. If no value is entered, a code will be generated automatically.';
            Caption = 'Campaign Code';
        }
        field(10042; Description; BLOB)
        {
            ExternalName = 'description';
            ExternalType = 'Memo';
            Description = 'Type additional information to describe the campaign, such as the products or services offered or the targeted audience.';
            Caption = 'Description';
            Subtype = Memo;
        }
        field(10043; ExpectedResponse; Integer)
        {
            ExternalName = 'expectedresponse';
            ExternalType = 'Integer';
            Description = 'Type the expected response rate for the campaign as a full number between 0 and 100.';
            Caption = 'Expected Response Percentage';
        }
        field(10044; ExpectedRevenue; Decimal)
        {
            ExternalName = 'expectedrevenue';
            ExternalType = 'Money';
            Description = 'Type the expected revenue for the campaign for return on investment projections and post-campaign reporting.';
            Caption = 'Estimated Revenue';
        }
        field(10045; ExpectedRevenue_Base; Decimal)
        {
            ExternalName = 'expectedrevenue_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Estimated Revenue in base currency.';
            Caption = 'Estimated Revenue (Base)';
        }
        field(10046; IsTemplate; Boolean)
        {
            ExternalName = 'istemplate';
            ExternalType = 'Boolean';
            ExternalAccess = Insert;
            Description = 'Select whether the campaign is a template that can be copied when you create future campaigns.';
            Caption = 'Template';
        }
        field(10048; Message; Text[256])
        {
            ExternalName = 'message';
            ExternalType = 'String';
            Description = 'Type the promotional message or marketing copy for the campaign.';
            Caption = 'Message';
        }
        field(10049; Objective; BLOB)
        {
            ExternalName = 'objective';
            ExternalType = 'Memo';
            Description = 'Type the objective of the campaign, including products, services, discounts, and pricing.';
            Caption = 'Offer';
            Subtype = Memo;
        }
        field(10050; OtherCost; Decimal)
        {
            ExternalName = 'othercost';
            ExternalType = 'Money';
            Description = 'Type the sum of any miscellaneous campaign costs not included in the campaign activities to make sure the actual cost of the campaign is calculated correctly.';
            Caption = 'Miscellaneous Costs';
        }
        field(10051; OtherCost_Base; Decimal)
        {
            ExternalName = 'othercost_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Miscellaneous Costs in base currency.';
            Caption = 'Miscellaneous Costs (Base)';
        }
        field(10052; PromotionCodeName; Text[128])
        {
            ExternalName = 'promotioncodename';
            ExternalType = 'String';
            Description = 'Type a promotional code to track sales related to the campaign or allow customers to redeem a discount offer.';
            Caption = 'Promotion Code';
        }
        field(10053; ProposedEnd; Date)
        {
            ExternalName = 'proposedend';
            ExternalType = 'DateTime';
            Description = 'Enter the date when the campaign is scheduled to end.';
            Caption = 'Proposed End Date';
        }
        field(10054; ProposedStart; Date)
        {
            ExternalName = 'proposedstart';
            ExternalType = 'DateTime';
            Description = 'Enter the date when the campaign is scheduled to start.';
            Caption = 'Proposed Start Date';
        }
        field(10055; StateCode; Option)
        {
            ExternalName = 'statecode';
            ExternalType = 'State';
            ExternalAccess = Modify;
            Description = 'Shows the status of the campaign. By default, campaigns are active and can''t be deactivated.';
            Caption = 'Status';
            InitValue = Active;
            OptionMembers = Active,Inactive;
            OptionOrdinalValues = 0, 1;
        }
        field(10057; StatusCode; Option)
        {
            ExternalName = 'statuscode';
            ExternalType = 'Status';
            Description = 'Select the campaign''s status.';
            Caption = 'Status Reason';
            InitValue = " ";
            OptionMembers = " ",Proposed,ReadyToLaunch,Launched,Completed,Canceled,Suspended,Inactive;
            OptionOrdinalValues = -1, 0, 1, 2, 3, 4, 5, 6;
        }
        field(10059; TotalActualCost; Decimal)
        {
            ExternalName = 'totalactualcost';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Shows the sum of the amounts entered in the Total Cost of Campaign Activities and Miscellaneous Costs fields.';
            Caption = 'Total Cost of Campaign';
        }
        field(10060; TotalActualCost_Base; Decimal)
        {
            ExternalName = 'totalactualcost_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Total Cost of Campaign in base currency.';
            Caption = 'Total Cost of Campaign (Base)';
        }
        field(10061; TotalCampaignActivityActualCost; Decimal)
        {
            ExternalName = 'totalcampaignactivityactualcost';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Shows the sum of the values entered in the Actual Cost field on all campaign activities related to the campaign.';
            Caption = 'Total Cost of Campaign Activities';
        }
        field(10062; TotalCampaignActivityActualCost_Base; Decimal)
        {
            ExternalName = 'totalcampaignactivityactualcost_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Total Cost of Campaign Activities in base currency.';
            Caption = 'Total Cost of Campaign Activities (Base)';
        }
        field(10063; TypeCode; Option)
        {
            ExternalName = 'typecode';
            ExternalType = 'Picklist';
            Description = 'Select the type of the campaign.';
            Caption = 'Campaign Type';
            InitValue = Advertisement;
            OptionMembers = Advertisement,DirectMarketing,"Event","Co-branding",Other;
            OptionOrdinalValues = 1, 2, 3, 4, 5;
        }
        field(10066; EntityImageId; GUID)
        {
            ExternalName = 'entityimageid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Read;
        }
        field(10071; TmpRegardingObjectId; Text[100])
        {
            ExternalName = 'tmpregardingobjectid';
            ExternalType = 'String';
            Description = '';
            Caption = 'TmpRegardingObjectId';
        }
        field(10072; msdyn_gdproptout; Boolean)
        {
            ExternalName = 'msdyn_gdproptout';
            ExternalType = 'Boolean';
            Description = 'Describes whether campaign is opted out or not';
            Caption = 'GDPR Optout';
        }
    }
    keys
    {
        key(PK; CampaignId)
        {
            Clustered = true;
        }
        key(Name; Name)
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; Name)
        {
        }
    }
}