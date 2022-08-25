class GeoLocationData {
  final String? street;
  final String? block;
  final String? postCode;
  final String? country;
  final String? countryCode;
  final String? state;
  final String? houseNumber;
  final String? city;

  GeoLocationData(
    this.street,
    this.block,
    this.postCode,
    this.country,
    this.countryCode,
    this.state,
    this.houseNumber,
    this.city,
  );
}

class GeoLocationLatLng {
  final double lat;
  final double lng;

  GeoLocationLatLng(this.lat, this.lng);
}
