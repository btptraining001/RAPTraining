@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS : Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZVKRAP01_II_SOIT 
    as select from zvkrap01_dt_soit
    
    association to parent ZVKRAP01_RI_SO as _Header
        on $projection.Soid = _Header.Soid
    
    association[1..1] to ZVKRAP01_I_PROD as _Prod
        on $projection.Product = _Prod.ProdId
{
    key soid as Soid,
    key item_id as ItemId,
    product as Product,
    @Semantics.amount.currencyCode: 'Currency'    
    amount as Amount,
    currency as Currency,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    image_item as ImageItem,
    _Header,
    _Prod
}
