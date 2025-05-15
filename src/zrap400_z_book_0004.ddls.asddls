@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forBooking'
define view entity ZRAP400_Z_Book_0004
  as projection on ZRAP400_I_Book_0004 as Booking
{
  key TravelID,
  key BookingID,
  BookingDate,
  CustomerID,
  CarrierID,
  ConnectionID,
  FlightDate,
  BookingStatus,
  FlightPrice,
  CurrencyCode,
  LastChangedAt,
  _Travel : redirected to parent ZRAP400_Z_Travel_0004,
  _Connection,
  _Flight,
  _Carrier,
  _Currency,
  _Customer
  
}
