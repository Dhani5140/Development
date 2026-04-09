codeunit 70001 SalesCode
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 37, OnValidateUnitOfMeasureCodeOnAfterGetItemData, '', false, false)]
    local procedure GetItemUoM(var SalesLine: Record "Sales Line"; xSalesLine: Record "Sales Line"; Item: Record Item)
    begin
        SalesLine."UnitofMeasureCode2" := Item."Base Unit of Measure";
    end;
}