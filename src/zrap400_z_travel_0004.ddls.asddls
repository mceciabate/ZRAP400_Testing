@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View forTravel'
define root view entity ZRAP400_Z_Travel_0004
  provider contract transactional_interface
  as projection on ZRAP400_I_Travel_0004 as Travel
{
  key TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LastChangedAt,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LastChangedBy,
      _Booking : redirected to composition child ZRAP400_Z_Book_0004,
      _Agency,
      _Currency,
      _Customer

}
