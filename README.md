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

A Package to find address data by lat and lng with translated data looking by language parameter without limit and api key for google map




import "package:flutter_geolocation/flutter_geolocation.dart"

final GeoLocationData data =await getGeoLocationData(
latLng:GeoLocationLatLng(lat:50.12136477537388,lng:8.636582699999995),
language:'en'
);

