pageextension 70110 "CRONUS Social Media Page Ext" extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(SocialMediaGroup)
            {
                Caption = 'Social Media';
                field(Facebook; Rec.Facebook)
                {
                    ApplicationArea = All;
                }
                field(Twitter; Rec.Twitter)
                {
                    ApplicationArea = All;
                }
                field(Instagram; Rec.Instagram)
                {
                    ApplicationArea = All;
                }
                field(LinkedIn; Rec.LinkedIn)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}