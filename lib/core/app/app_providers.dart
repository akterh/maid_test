import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testApp/core/app/app_dependency.dart';
import 'package:testApp/features/screens/home/cubit/user_cubit.dart';
import 'package:testApp/features/screens/login/cubit/login_cubit.dart';
import 'package:testApp/features/screens/no_internet/cubit/internet_cubit.dart';

import '../../features/screens/theme/cubit/theme_cubit.dart';

class AppProviders {
  static final providers = <BlocProvider>[
        BlocProvider<ThemeCubit>(
            create: (BuildContext context) => instance<ThemeCubit>()),
      ] +
      <BlocProvider>[
        BlocProvider<InternetCubit>(
            create: (BuildContext context) => instance<InternetCubit>()),
      ] +
      <BlocProvider>[
        BlocProvider<LoginCubit>(
            create: (BuildContext context) => instance<LoginCubit>()),
      ] +
      <BlocProvider>[
        BlocProvider<UserCubit>(
            create: (BuildContext context) => instance<UserCubit>()),
      ];
}
