codeunit 70000 PurchaseCode
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterGetItem', '', false, false)]
    local procedure UoM_OnAfterGetItem(var Item: Record Item; var PurchaseLine: Record "Purchase Line")
    begin
        PurchaseLine."UnitofMeasureCode2" := Item."Base Unit of Measure";
    end;
}