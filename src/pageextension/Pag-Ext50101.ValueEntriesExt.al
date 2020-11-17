pageextension 50101 "ValueEntriesExt" extends "Value Entries"
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