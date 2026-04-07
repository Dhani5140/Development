tableextension 70110 "CRONUS Social Media Table Ext" extends Customer
{
    fields
    {
        field(70110; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(70111; Twitter; Text[50])
        {
            Caption = 'Twitter';
            DataClassification = ToBeClassified;
        }
        field(70112; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(70113; LinkedIn; Text[50])
        {
            Caption = 'LinkedIn';
            DataClassification = ToBeClassified;
        }
    }
}