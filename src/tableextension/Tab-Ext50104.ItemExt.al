tableextension 50104 "ItemExt" extends Item
{
    fields
    {
        //Added to have a quick way to see the amount of lines containting some kind of bonus from the item card
        field(50100; BonusLookup; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Value Entry" where("Item No." = field("No."), Bonus = filter('<>0')));
            Caption = 'Value entries with bonus';
        }
    }

    var
        myInt: Integer;
}