codeunit 50100 "Bonus Sales Lines Subs"
{
    trigger OnRun()
    begin

    end;

    //Adding Bonus from SalesLine to ItemJnlLine when posting
    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', true, true)]
    local procedure OnAfterCopyItemJnlLineFromSalesLineOnTableItemJournalLine(SalesLine: Record "Sales Line"; var ItemJnlLine: Record "Item Journal Line")
    begin
        ItemJnlLine.Bonus := SalesLine.Bonus;
    end;

    //When posting creating a new ItemLedgerEntry - Make sure Bonus goes from IJL to Item Ledger Entry.
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure OnAfterInitItemLedgEntryOnCodeunitItemJnlPostLine(ItemJournalLine: Record "Item Journal Line"; var NewItemLedgEntry: Record "Item Ledger Entry")
    begin
        NewItemLedgEntry.Bonus := ItemJournalLine.Bonus;
    end;

    //When Item Ledger Entry is entered, get the Bonus to Value entry table.
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnInitValueEntryOnAfterAssignFields', '', true, true)]
    local procedure OnInitValueEntryOnAfterAssignFieldsOnCodeunitItemJnlPostLine(ItemLedgEntry: Record "Item Ledger Entry"; var ValueEntry: Record "Value Entry")
    begin
        ValueEntry.Bonus := ItemLedgEntry.Bonus;
    end;


}