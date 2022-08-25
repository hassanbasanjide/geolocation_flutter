import 'package:geolocation_flutter/geolocation_flutter..dart';
import 'package:geolocation_flutter/models/models.dart';

Future<void> _getLocationData() async {
  final GeoLocationData data =
      await getGeoLocationData(latLng: GeoLocationLatLng(50.12136477537388, 8.636582699999995));
}
