codeunit 50116 "BCS Master Company"
{
    //Customer- Insert/modify/delete
    //OnAfterInsertEvent => Executed after a record is inserted in a table
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', false, false)]
    local procedure BCSMasterCustomerInserted(var Rec: Record Customer; RunTrigger: Boolean)
    var
        Company: Record Company;
        Customer: Record Customer;
    begin
        if not RunTrigger then
            exit;
        if not IsMasterComapany then
            exit;

        //For each Company in the database, if it is not the current compamy, insert a copy
        if company.FindSet(false) then
            repeat
                if company.Name <> CompanyName then begin
                    Customer.ChangeCompany();
                    //Customer.Validate(Name, 'SOMETHING CO'); // For Demo
                    Customer.Init();
                    Customer := Rec;
                    Customer.insert(true);
                end;
            until company.Next() = 0;
    end;
    //Vendor- Insert/modify/delete

    //item- Insert/modify/delete

    //GL - Accounts - Insert/modify/delete

    //Posting Group/VAT/Tax Group/Inventory/Cust/Vendor - Insert/modify/delete

    local procedure IsMasterComapany(): Boolean
    var
        CompapanyInformation: Record "Company Information";
    begin
        if CompapanyInformation.Get() then
            exit(CompapanyInformation."Master Company")
        else
            exit(false);

    end;
}