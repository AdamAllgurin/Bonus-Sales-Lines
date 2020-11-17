pageextension 50100 "SalesOrderSubformExt" extends "Sales Order Subform"
{
    layout
    {
        addlast(Control1)
        {
            field(Bonus; Rec.Bonus)
            {
                ApplicationArea = All;
            }
        }
    }
}