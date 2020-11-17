pageextension 50103 "ItemCardExt" extends "Item Card"
{
    layout
    {
        addlast("Costs & Posting")
        {
            field(BonusLookup; Rec.BonusLookup)
            {
                ApplicationArea = All;
            }
        }
    }
}