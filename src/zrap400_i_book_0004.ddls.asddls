@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forBooking'
@ObjectModel.sapObjectNodeType.name: 'ZRAP400_Booking_0004'
define view entity ZRAP400_I_Book_0004
  as select from ZRAP400_BOOK0004 as Booking
  association to parent ZRAP400_I_Travel_0004 as _Travel on $projection.TravelID = _Travel.TravelID
  association [1..1] to /DMO/I_Connection as _Connection on $projection.CarrierID = _Connection.AirlineID and $projection.ConnectionID = _Connection.ConnectionID
  association [1..1] to /DMO/I_Flight as _Flight on $projection.CarrierID = _Flight.AirlineID and $projection.ConnectionID = _Flight.ConnectionID and $projection.FlightDate = _Flight.FlightDate
  association [1..1] to /DMO/I_Carrier as _Carrier on $projection.CarrierID = _Carrier.AirlineID
  association [0..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
  association [1..1] to /DMO/I_Customer as _Customer on $projection.CustomerID = _Customer.CustomerID
{
  key TRAVEL_ID as TravelID,
  key BOOKING_ID as BookingID,
  BOOKING_DATE as BookingDate,
  CUSTOMER_ID as CustomerID,
  CARRIER_ID as CarrierID,
  CONNECTION_ID as ConnectionID,
  FLIGHT_DATE as FlightDate,
  BOOKING_STATUS as BookingStatus,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  FLIGHT_PRICE as FlightPrice,
  CURRENCY_CODE as CurrencyCode,
  LAST_CHANGED_AT as LastChangedAt,
  _Travel,
  _Connection,
  _Flight,
  _Carrier,
  _Currency,
  _Customer
  
}
