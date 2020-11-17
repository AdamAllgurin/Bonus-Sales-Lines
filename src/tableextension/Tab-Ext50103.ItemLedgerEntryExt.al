tableextension 50103 "ItemLedgerEntryExt" extends "Item Ledger Entry"
{
    fields
    {
        field(50100; Bonus; enum SalesLineBonus)
        {
            DataClassification = CustomerContent;
        }
    }
}