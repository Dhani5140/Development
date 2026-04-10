codeunit 70001 SalesCode
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 37, OnValidateUnitOfMeasureCodeOnAfterGetItemData, '', false, false)]
    local procedure GetItemUoM(
        var SalesLine: Record "Sales Line";
        xSalesLine: Record "Sales Line";
        Item: Record Item)
    begin
        SalesLine."UnitofMeasureCode2" := Item."Base Unit of Measure";
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, OnBeforePostUpdateOrderLineModifyTempLine, '', false, false)]
    local procedure FixSalesQtyBeforeModify(
        var TempSalesLine: Record "Sales Line" temporary;
        WhseShip: Boolean;
        WhseReceive: Boolean;
        CommitIsSuppressed: Boolean;
        var IsHandled: Boolean;
        SalesHeader: Record "Sales Header")
    begin
        TempSalesLine."QtyShipped2" += TempSalesLine."QtytoShip2";
        TempSalesLine.Validate("Quantity2");
        TempSalesLine.Validate("QtytoShip2");
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, OnInsertShipmentLineOnAfterInitQuantityFields, '', false, false)]
    local procedure MyProcedure(
        var SalesLine: Record "Sales Line";
        var xSalesLine: Record "Sales Line";
        var SalesShptLine: Record "Sales Shipment Line")
    begin
        SalesShptLine."Quantity2" := SalesLine."QtytoShip2";
        SalesShptLine."QtyShippedNotInvoiced2" := SalesShptLine."Quantity2" - SalesShptLine."QtyInvoiced2";
    end;
}