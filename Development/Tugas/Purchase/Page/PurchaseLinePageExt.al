pageextension 70000 "Purchase Line Page Ext" extends "Purchase Order Subform"
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
        addafter("Qty. to Receive")
        {
            field("Qty. to Receive 2"; Rec."Qty. to Receive 2")
            {
                ApplicationArea = All;
                Caption = 'Qty. to Receive 2';
            }
        }
        addafter("Quantity Received")
        {
            field("Quantity Received 2"; Rec."Quantity Received 2")
            {
                ApplicationArea = All;
                Caption = 'Quantity Received 2';
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
                Caption = 'Quantity Invoiced 2';
            }
        }
    }
}