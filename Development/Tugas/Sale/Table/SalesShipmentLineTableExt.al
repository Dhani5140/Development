tableextension 70005 "Sales Shpt. Line Table Ext" extends "Sales Shipment Line"
{
    fields
    {
        field(70000; "Quantity 2"; Decimal)
        {
            Caption = 'Quantity 2';
            DataClassification = ToBeClassified;
        }
        field(70001; "Unit of Measure Code 2"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit of Measure Code 2';
            TableRelation = "Unit of Measure";
        }
        field(70002; "Qty. Shipped Not Invoiced 2"; Decimal)
        {
            Caption = 'Qty. Shipped Not Invoiced 2';
            DataClassification = ToBeClassified;
        }
        field(70003; "Quantity Invoiced 2"; Decimal)
        {
            Caption = 'Quantity Invoiced 2';
            DataClassification = ToBeClassified;
        }
    }
}