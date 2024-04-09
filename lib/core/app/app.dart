import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testApp/core/app/app_context.dart';
import 'package:testApp/core/app/app_providers.dart';
import 'package:testApp/features/screens/no_internet/cubit/internet_cubit.dart';

import '../../features/router/routes.dart';
import '../../features/screens/theme/app_theme.dart';
import '../../features/screens/theme/cubit/theme_cubit.dart';

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: AppProviders.providers, child: const TestAppApp());
  }
}

class TestAppApp extends StatelessWidget {
  const TestAppApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return BlocConsumer<InternetCubit, InternetState>(
          listener: (context, internetState) {
            log(internetState.status.toString());
          },
          builder: (context, state) {
            return ScreenUtilInit(
              designSize: const Size(430, 932), // App screen size
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (BuildContext context, Widget? child) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: MaterialApp(
                    scrollBehavior: ScrollConfiguration.of(context)
                        .copyWith(physics: const BouncingScrollPhysics()),
                    debugShowCheckedModeBanner: false,
                    title: 'TestApp',
                    builder: EasyLoading.init(),
                    navigatorKey: GetContext.navigatorKey,
                    theme: AppTheme.lightTheme,
                    onGenerateRoute: RouteGenerator.getRoute,
                    initialRoute: Routes.splash,
                    localizationsDelegates: [...context.localizationDelegates],
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
