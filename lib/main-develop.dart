import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.DEVELOP;
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() {
    runApp(ProviderScope(child: App()));
  }, (error, stackTrace) {
    //FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}
