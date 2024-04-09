import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/app/app.dart';
import 'core/app/app_dependency.dart';
import 'core/app/app_flavor.dart';
import 'core/app_bloc_observer.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  log('Handling a background message ${message.messageId}');
}

void main() async {
  await FCMConfig.instance
      .init(
          onBackgroundMessage: _firebaseMessagingBackgroundHandler,
          defaultAndroidForegroundIcon: '@drawable/launch_image',
          defaultAndroidChannel: const AndroidNotificationChannel(
              'high_importance_channel', 'testApp',
              importance: Importance.high))
      .then((value) => FCMConfig.instance.messaging.subscribeToTopic('all'));
  //Init Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //Init easy localization
  await EasyLocalization.ensureInitialized();
  //Init modules
  configureInjection();
  //Init app flavor
  AppFlavor.appFlavor = FlavorStatus.staging;
  EasyLoading.instance.userInteractions = false;
  //Init my app with observer
  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', ''),
        Locale('de', ''),
        Locale('fr', ''),
      ],
      fallbackLocale: const Locale('de', ''),
      startLocale: const Locale('de', ''),
      saveLocale: true,
      path: 'assets/translations',
      child: const InitApp(),
    ),
  );
}
