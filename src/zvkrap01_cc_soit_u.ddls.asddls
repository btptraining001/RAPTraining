@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS : Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZVKRAP01_CC_SOIT_U 
as projection on ZVKRAP01_II_SOIT_U
{
    key Soid,
    key ItemId,
    Product,
@Semantics.amount.currencyCode: 'Currency'    
    Amount,
    Currency,
    SalesPerson,
    SalesTimestamp,
    SalesManager,
    ApprovalTimestamp,
    ChangedBy,
    ChangedOn,
    ImageItem,
    /* Associations */
    _Header : redirected to parent ZVKRAP01_RC_SO_U,
    _Prod
}
