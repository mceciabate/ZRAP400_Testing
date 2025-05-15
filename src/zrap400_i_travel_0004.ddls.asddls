@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forTravel'
@ObjectModel.sapObjectNodeType.name: 'ZRAP400_Travel_0004'
define root view entity ZRAP400_I_Travel_0004
  as select from zrap400_trav0004 as Travel
  association [0..1] to /DMO/I_Agency       as _Agency   on $projection.AgencyID = _Agency.AgencyID
  association [0..1] to I_Currency          as _Currency on $projection.CurrencyCode = _Currency.Currency
  association [0..1] to /DMO/I_Customer     as _Customer on $projection.CustomerID = _Customer.CustomerID
  composition [0..*] of ZRAP400_I_Book_0004 as _Booking
{
  key travel_id       as TravelID,
      agency_id       as AgencyID,
      customer_id     as CustomerID,
      begin_date      as BeginDate,
      end_date        as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee     as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price     as TotalPrice,
      currency_code   as CurrencyCode,
      description     as Description,
      overall_status  as OverallStatus,
      last_changed_at as LastChangedAt,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      _Booking,
      _Agency,
      _Currency,
      _Customer

}
