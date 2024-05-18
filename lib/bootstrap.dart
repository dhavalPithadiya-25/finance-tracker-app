import 'dart:async';

import 'package:finance_tracker_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> bootStrap(FutureOr<Widget> Function() builder, {required BlocObserver blocObserver}) async {
  return runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = blocObserver;
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      return runApp(await builder());
    },
    (error, stack) {
      debugPrint("$error");
      debugPrint("$stack");
    },
  );
}
