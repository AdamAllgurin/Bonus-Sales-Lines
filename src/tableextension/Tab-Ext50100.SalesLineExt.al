tableextension 50100 "SalesLineExt" extends "Sales Line"
{
    fields
    {
        field(50100; Bonus; Enum SalesLineBonus)
        {
            DataClassification = CustomerContent;
        }
    }
}