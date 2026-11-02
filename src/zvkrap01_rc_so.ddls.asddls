@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection CDS : Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZVKRAP01_RC_SO 
provider contract transactional_query
as projection on ZVKRAP01_RI_SO
{
    key Soid,
    Buyer,
    SalesPerson,
    SalesTimestamp,
    SalesManager,
    ApprovalTimestamp,
    CreatedBy,
    CreatedOn,
    ChangedBy,
    ChangedOn,
    Url,
    /* Associations */
    _Cust,
    _Item : redirected to composition child ZVKRAP01_CC_SOIT
}
