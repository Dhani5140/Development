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

    [EventSubscriber(ObjectType::Codeunit, 80, OnAfterSalesShptLineInsert, '', false, false)]
    local procedure MyProcedure(var SalesShipmentLine: Record "Sales Shipment Line";
    SalesLine: Record "Sales Line"; ItemShptLedEntryNo: Integer;
    WhseShip: Boolean; WhseReceive: Boolean;
    CommitIsSuppressed: Boolean;
    SalesInvoiceHeader: Record "Sales Invoice Header";
    var TempWhseShptHeader: Record "Warehouse Shipment Header" temporary;
    var TempWhseRcptHeader: Record "Warehouse Receipt Header" temporary;
    SalesShptHeader: Record "Sales Shipment Header";
    SalesHeader: Record "Sales Header")
    begin
        SalesShipmentLine."Quantity2" := SalesLine."QtytoShip2";
        SalesShipmentLine."QtyInvoiced2" := SalesLine."Quantity2";
        SalesShipmentLine.QtyShippedNotInvoiced2 := SalesLine."Quantity2" - SalesLine."QtyInvoiced2";
    end;
}