@EndUserText.label: 'Projection Root'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZCD_C_R_ORDEN_JH
  //provider contract transactional_query 
  as projection on ZCD_I_R_ORDEN_JH
{
    key Id,
    Email,
    Firstname,
    Lastname,
    Country,
    Createon,
    Deliverydate,
    Orderstatus,
    Imageurl,
    /* Associations */
    _Items : redirected to composition child ZCD_C_V_ITEMS_JH
}
