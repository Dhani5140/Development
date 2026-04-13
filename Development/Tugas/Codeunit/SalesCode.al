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
    local procedure InitiateShipmentLine(
        var SalesLine: Record "Sales Line";
        var xSalesLine: Record "Sales Line";
        var SalesShptLine: Record "Sales Shipment Line")
    begin
        SalesShptLine."Quantity2" := SalesLine."QtytoShip2";
        SalesShptLine."QtyShippedNotInvoiced2" := SalesShptLine."Quantity2";
        SalesShptLine."QtyInvoiced2" := 0;
    end;

    // [EventSubscriber(ObjectType::Codeunit, 80, OnBeforeUpdateInvoicedQtyOnShipmentLine, '', false, false)]
    // local procedure UpdateInvoicedQtyOnPurchRcptLine(
    // var SalesShipmentLine: Record "Sales Shipment Line";
    // SalesLine: Record "Sales Line";
    // SalesHeader: Record "Sales Header";
    // SalesInvoiceHeader: Record "Sales Invoice Header";
    // CommitIsSuppressed: Boolean)
    // begin
    //     SalesShipmentLine.QtyInvoiced2 += SalesShipmentLine.QtyShippedNotInvoiced2;
    //     SalesShipmentLine.QtyShippedNotInvoiced2 := SalesShipmentLine."Quantity2" - SalesShipmentLine.QtyInvoiced2;
    // end;
}