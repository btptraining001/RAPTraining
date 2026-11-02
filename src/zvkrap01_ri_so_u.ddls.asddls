@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Interface CDS : Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZVKRAP01_RI_SO_U 
    as select from zvkrap01_dt_so
    
composition[1..*] of ZVKRAP01_II_SOIT_U as _Item

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

@Semantics.systemDateTime.lastChangedAt: true
@Semantics.systemDateTime.localInstanceLastChangedAt: true    
    changed_on as ChangedOn,
    url as Url,
    _Item, // Make association public
    _Cust
}
