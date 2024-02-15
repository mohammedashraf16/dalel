import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/database/cashe/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/functions/check_state_changes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  checkStateChanges();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}
