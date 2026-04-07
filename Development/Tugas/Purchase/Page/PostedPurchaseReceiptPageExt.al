pageextension 70001 "Posted Purchase Rcpt. Page Ext" extends "Posted Purchase Rcpt. Subform"
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
        addafter("Qty. Rcd. Not Invoiced")
        {
            field("Qty. Rcd. Not Invoiced 2"; Rec."Qty. Rcd. Not Invoiced 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. Rcd. Not Invoiced 2';
            }
        }
        addafter("Quantity Invoiced")
        {
            field("Qty. Invoiced 2"; Rec."Qty. Invoiced 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. Invoiced 2';
            }
        }
    }
}