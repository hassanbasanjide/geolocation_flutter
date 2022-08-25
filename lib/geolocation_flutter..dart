library geolocation_flutter;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_services/dio_services.dart';
import 'models/models.dart';

Future<GeoLocationData> getGeoLocationData(
    {required GeoLocationLatLng latLng, String? languageCode}) async {
  final Call api = Call();
  final Response response = await api.post(
    '/reverse.php',
    queryParameters: {
      'accept-language': languageCode,
      'zoom': 20,
      'lat': latLng.lat,
      'lon': latLng.lng,
      'format': 'jsonv2',
      'formats': 'boundary',
    },
  );
  final Map<String, dynamic> responseMap =
      response.data as Map<String, dynamic>;
  final String? street = responseMap['address']['road'] as String?;
  final String? block = responseMap['address']['neighbourhood'] as String?;
  final String? postCode = responseMap['address']['postcode'] as String?;
  final String? country = responseMap['address']['country'] as String?;
  final String? countryCode = responseMap['address']['country_code'] as String?;
  final String? state = responseMap['address']['state'] as String?;
  final String? houseNumber = responseMap['address']['house_number'] as String?;
  final String? city = responseMap['address']['city'] as String?;
  return GeoLocationData(
    street,
    block,
    postCode,
    country,
    countryCode,
    state,
    houseNumber,
    city,
  );
}
