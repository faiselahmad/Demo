codeunit 50128 "FAS Sales Posting"
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterCopySellToCustomerAddressFieldsFromCustomer', '', false, false)]
    local procedure CopyCustomFields(SellToCustomer: Record Customer; var SalesHeader: Record "Sales Header")
    begin
        // SalesHeader."FAS Demo Description" := SellToCustomer."FAS Demo Description";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromSalesHeader', '', false, false)]
    local procedure CopyFromSalesHeader(SalesHeader: Record "Sales Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //  GenJournalLine."FAS Demo Description" := SalesHeader."FAS Demo Description";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Cust. Ledger Entry", 'OnAfterCopyCustLedgerEntryFromGenJnlLine', '', false, false)]
    local procedure CopyFromJournalToLedger(GenJournalLine: Record "Gen. Journal Line"; var CustLedgerEntry: Record "Cust. Ledger Entry")
    begin
        CustLedgerEntry."FAS Demo Description" := GenJournalLine."FAS Demo Description";
    end;
}