page 70101 "CRONUS Course Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = CRONUSCourse;
    Caption = 'Course Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
                field(InstructorName; Rec.InstructorCode)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'Resource';
                ToolTip = 'Open the Resource Card';
                RunObject = page "Resource Card";
                RunPageLink = "No." = field(InstructorCode);
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
            }

        }
    }
}