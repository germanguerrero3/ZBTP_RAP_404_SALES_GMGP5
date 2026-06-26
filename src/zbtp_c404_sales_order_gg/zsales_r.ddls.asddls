@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Header Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSALES_R
  as select from zsales_gg

 // composition [0..*] of zitems_r as _items
{
  key sales_uuid            as SalesUuid,
  key id                    as Id,
      email                 as Email,
      first_name            as FirstName,
      last_name             as LastName,
      country               as Country,
      create_on             as CreateOn,
      delivery_date         as DeliveryDate,
      order_status          as OrderStatus,
      image_url             as ImageUrl,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt

      // Make association public
      //_items
}
