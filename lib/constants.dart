// import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class Constants {
  const Constants({
    required this.endpoint,
    required this.apiKey,
  });

  factory Constants.of() {
    if (_instance != null) return _instance!;
    _instance = Constants._dev();
    return _instance!;
  }

  factory Constants._dev() {
    return const Constants(
      endpoint: 'https://newsapi.org',
      apiKey: '98c8df982b8b4da8b86cd70e851fc521',
    );
  }

  // factory Constants._prd() {
  //   return const Constants(
  //     endpoint: 'https://newsapi.org',
  //     apiKey: '4bc454db94464956aea4cbb01f4bf9f4',
  //   );
  // }

  // Routing name
  static const String pageHome = '/home';
  static const String pageSignIn = '/signIn';
  static const String pageDetail = '/detail';

  static Constants? _instance;

  final String endpoint;
  final String apiKey;
}
