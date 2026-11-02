@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS : Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZVKRAP01_CC_SOIT 
as projection on ZVKRAP01_II_SOIT
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
    _Header : redirected to parent ZVKRAP01_RC_SO,
    _Prod
}
