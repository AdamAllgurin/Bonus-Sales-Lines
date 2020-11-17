tableextension 50102 "ItemJournalLineExt" extends "Item Journal Line"
{
    fields
    {
        field(50100; Bonus; enum SalesLineBonus)
        {
            DataClassification = CustomerContent;
        }
    }
}