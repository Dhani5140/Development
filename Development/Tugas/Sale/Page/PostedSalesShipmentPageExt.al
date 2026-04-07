pageextension 70005 "Posted Sales Shpt. Page Ext" extends "Posted Sales Shpt. Subform"
{
    layout
    {
        addafter("Quantity")
        {
            field("Quantity 2"; Rec."Quantity 2")
            {
                ApplicationArea = All;
                Caption = 'Quantity 2';
            }
        }
        addafter("Unit of Measure Code")
        {
            field("Unit of Measure Code 2"; Rec."Unit of Measure Code 2")
            {
                ApplicationArea = All;
                Caption = 'Unit of Measure Code 2';
            }
        }
        addafter("Qty. Shipped Not Invoiced")
        {
            field("Qty. Shipped Not Invoiced 2"; Rec."Qty. Shipped Not Invoiced 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. Shipped Not Invoiced 2';
            }
        }
        addafter("Quantity Invoiced")
        {
            field("Quantity Invoiced 2"; Rec."Quantity Invoiced 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. Invoiced 2';
            }
        }
    }
}