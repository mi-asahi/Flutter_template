// import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';

@immutable
class Constants {
  const Constants({
    required this.endpoint,
    required this.apiKey,
    required this.test,
  });

  factory Constants.of() {
    if (_instance != null) return _instance!;

    switch (F.appFlavor) {
      case Flavor.DEVELOP:
        _instance = Constants._development();
        break;
      case Flavor.STAGING:
        _instance = Constants._staging();
        break;
      case Flavor.PRODUCT:
      default:
        _instance = Constants._product();
        break;
    }
    return _instance!;
  }

  factory Constants._development() {
    return const Constants(
      endpoint: 'https://newsapi.org',
      apiKey: '98c8df982b8b4da8b86cd70e851fc521',
      test: "dev",
    );
  }

  factory Constants._staging() {
    return const Constants(
      endpoint: 'https://newsapi.org',
      apiKey: '4bc454db94464956aea4cbb01f4bf9f4',
      test: "stg",
    );
  }

  factory Constants._product() {
    return const Constants(
      endpoint: 'https://newsapi.org',
      apiKey: '4bc454db94464956aea4cbb01f4bf9f4',
      test: "prd",
    );
  }
  // Routing name
  static const String pageHome = '/home';
  static const String pageSignIn = '/signIn';
  static const String pageDetail = '/detail';

  static Constants? _instance;

  final String endpoint;
  final String apiKey;
  final String test;
}
