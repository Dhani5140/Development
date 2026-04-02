tableextension 70110 "CRONUS Social Media Table Ext" extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(50111; Twitter; Text[50])
        {
            Caption = 'Twitter';
            DataClassification = ToBeClassified;
        }
        field(50112; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(50113; LinkedIn; Text[50])
        {
            Caption = 'LinkedIn';
            DataClassification = ToBeClassified;
        }
    }
}