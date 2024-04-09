import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testApp/core/app/app_preference.dart';
import 'package:testApp/features/components/custom_background.dart';
import 'package:testApp/features/router/routes.dart';
import 'package:testApp/generated/assets.dart';

import '../../../../core/app/app_dependency.dart';

class SplashScreen extends StatefulWidget {
  final AppPreferences _appPreferences;
  SplashScreen({Key? key})
      : _appPreferences = instance.get(),
        super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _navigation);
  }

  void _navigation() async {
    if (await widget._appPreferences.isUserLoggedIn()) {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.home, (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.login, (route) => false);
    }
  }

  /*
  _goNext() async {
    _appPreferences.isUserLoggedIn().then(
          (isUserLoggedIn) => {
        if (isUserLoggedIn)
          {Navigator.pushReplacementNamed(context, Routes.dashboard)}
        else
          {Navigator.pushReplacementNamed(context, Routes.introPages)}
      },
    );
  }
  */

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'logo',
        child: Image.asset(
          Assets.imagesLogo,
          width: 100.r,
          height: 100.r,
        ),
      ),
    );
  }
}
