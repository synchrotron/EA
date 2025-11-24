workspace "Channel 4 Core" "Base Line Model" {

    !identifiers flat

    model {
    
    archetypes {
            application = container
    }
    
    /* These are all the teams and departments */
    comFinTeam = person "Commercial Finance" "Team that analyse financial data, forecast performance, plan budgets and support strategic decisions." "Team"
    allC4 = person "All Colleages" "All collegues working at C4" "Organisation"
    finDept = person "Finance" "Oversee financial health, ensure compliance, support strategy, manage budgets and reporting" "Department"
    sharedServicesTeam = person "Shared Services" "Team that process invoices, management payments, verify expenses, maintain vendor relationships and ensure accuracy." "Team"
    taxTeam = person "Tax and Treasury" "Team that manage cash, investments, debt and ensure tax complience and reporting" "Team"

    /* The Finance Platform */
    
    fsp = softwareSystem "Finance System Platform" "Applications centred around the management of Colleagues and Employees" {
            ebs = application "Oracle e-Business Suite" "Financial System of record" "Hosted App" "Finance Transformation"
            wda = application "Workday Adpative" "Financial Budgeting, Planning and Consolidation application." "SaaS"
            sbi = application "SplashBI" "Description" "Type" "Finance Transformation"
            bsw = application "Baseware" "Description" "Type" "Finance Transformation"
            faf = application "Financial Approval Forms" "Description" "Type" "Finance Transformation"
            pjc = application "Project Codes"
            tgn = application "Tungsten Network"
            msc = application "Mastercard"
            cmx = application "Cachematrix" "Cash Flow management solution" 'SaaS'
            bbp = application "Barclays Banking Portal"
            apt = application "AlphaTax"
            sov = application "Sovos"
            exr = application "Exchange Rates"
    }
        
   
     /* Finance Platform Relationships with users */
    taxTeam -> exr "Tax calculation and reporting"
    taxTeam -> sov "Tax calculation and reporting"
    taxTeam -> apt "Tax calculation and reporting"
    taxTeam -> bbp "Cash Flow management" "" "API"
    taxTeam -> cmx "Cash Flow management" "" "API"    

    sharedServicesTeam -> msc "Manages all collegues spend" "API"
    sharedServicesTeam -> tgn "Manages Tungsten billing process" "API"
    sharedServicesTeam -> bsw "P2P Process Super User"
        
    allC4 -> pjc "Creates new codes for C4 shows"
    allC4 -> faf "Submits request for sign-off limit changes"
    allC4 -> bsw "Create/Approve PO"
    allC4 -> ebs "Create/Approve Expenses"
    
    finDept -> sbi "Create and distribute insights"
    finDept -> ebs "AP/AR/GL operation activities"
        
    comFinTeam -> wda "Produce plans and Budgets"        
    
    /* Finance Platform Relationships with applications */
    ebs -> exr "Financial Data"
    ebs -> wda "Master and Transactional Data" "ERROR: Bi diectional!"
    sbi -> ebs "Database reads" "VPN" "Finance Transformation"
    bsw -> ebs "Invoicing and Parchasing Master" "Mule"
    faf -> ebs "Delagated autority submissions" "Hosted"
    pjc -> ebs "Project Master Data" "Automate"
    tgn -> ebs "Customer Billing Ivoice" "Mule"
    ebs -> cmx "Finacial Transactional Data" "File"
    bbp -> ebs "Bank Statements and Payment files" "Automate"
    ebs -> apt "Finacial Transactional Data" "File"
    ebs -> sov "Finacial Transactional Data" "File"
    
        
    /* The People (HR) Platform */
     hrp = softwareSystem "People Platform" "Applications centred around the management of Colleagues and Employees" {
            4po = application "4People" "HCM People System" "SaaS HCM"
    }
    cmp = softwareSystem "Commercial Platform"
    sbs = softwareSystem "Small Business Systems"
    c4s = softwareSystem "Channel 4 Streaming Platform"
    rsp = softwareSystem "Royalties and Sales Platform"
    
    
 
    
    
    }

    
}