import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testApp/features/screens/login/cubit/login_cubit.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_size.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/strings.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/default_btn.dart';

class LoginPage extends StatelessWidget {

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.verticalSpace,
            Text('User Name'),
            CustomTextField(
              controller: context.read<LoginCubit>().emailController,
              hint: 'User Name',
              borderColor: AppColors.kBlackColor,
              isEmail: true,
              fillColor: AppColors.kMeatBrown200,
              textColor: AppColors.kBlackColor,
              hintColor: AppColors.kBlackColor,
            ),
            Text(
              'Password',
            ),
            CustomTextField(
              controller: context.read<LoginCubit>().passController,
              hint: 'Password',
              borderColor: AppColors.kBlackColor,
              fillColor: AppColors.kMeatBrown200,
              textColor: Colors.black,
              hintColor: AppColors.kBlackColor,

            ),
            20.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: DefaultBtn(
                title: AppStrings.login.tr(),
                onPress: () async {
                  context.read<LoginCubit>().login();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
