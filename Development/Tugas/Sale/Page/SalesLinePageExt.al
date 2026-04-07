pageextension 70004 "Sales Line Page Ext" extends "Sales Order Subform"
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
        addafter("Qty. to Ship")
        {
            field("Qty. to Ship 2"; Rec."Qty. to Ship 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. to Ship 2';
            }
        }
        addafter("Quantity Shipped")
        {
            field("Quantity Shipped 2"; Rec."Quantity Shipped 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. Shipped 2';
            }
        }
        addafter("Qty. to Invoice")
        {
            field("Qty. to Invoice 2"; Rec."Qty. to Invoice 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. to Invoice 2';
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