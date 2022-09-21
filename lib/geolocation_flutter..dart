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
  final Map<String, dynamic>? address = response.data as Map<String, dynamic>?;

  final String? street = address?['road'] as String?;
  final String? block = address?['neighbourhood'] as String?;
  final String? postCode = address?['postcode'] as String?;
  final String? country = address?['country'] as String?;
  final String? countryCode = address?['country_code'] as String?;
  final String? state = address?['state'] as String?;
  final String? houseNumber = address?['house_number'] as String?;
  final String? city = address?['city'] as String?;
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
