<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

a Package for find geo location data without limit of usage and map api key



## Getting started
import "package:geolocation_flutter/geolocaton_flutter.dart"

then use getGeoLocationData function and pass parameter by lat and lng or target language code

## Usage
```dart
import 'package:geolocation_flutter/geolocation_flutter..dart';
final GeoLocationData data =
      await getGeoLocationData(latLng: GeoLocationLatLng(50.12136477537388, 8.636582699999995),);
```
