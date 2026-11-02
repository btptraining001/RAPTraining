@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS : Product'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZVKRAP01_I_PROD 
    as select from zvkrap01_dt_prod

    
    association[1..1] to ZVKRAP01_I_SOIT as _Item
        on $projection.ProdId = _Item.Product    
{
    key prod_id as ProdId,
    descpt as Descpt,
    @Semantics.amount.currencyCode: 'Currency'
    price as Price,
    currency as Currency,
    _Item
}
