pageextension 50102 "ItemLedgerEntriesExt" extends "Item Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field(Bonus; Rec.Bonus)
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}