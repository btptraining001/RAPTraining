@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS : Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZVKRAP01_I_SO 
    as select from zvkrap01_dt_so
    
    association[1..*] to ZVKRAP01_I_SOIT as _Item
        on $projection.Soid = _Item.Soid
    
    association[1..1] to ZVKRAP01_I_CUST as _Cust
        on $projection.Buyer = _Cust.CustId
{
    key soid as Soid,
    buyer as Buyer,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    created_by as CreatedBy,
    created_on as CreatedOn,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    url as Url,
    _Item,
    _Cust
}
