import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:testApp/core/app/app_context.dart';
import 'package:testApp/features/components/custom_progress_loader.dart';
import 'package:testApp/features/screens/home/view/user_list_screen.dart';

import '../../../../core/app/app_dependency.dart';
import '../../../../core/app/app_preference.dart';
import '../repository/login_repo_imp.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AppPreferences _appPreferences;
  final LoginRepositoryImp _loginRepository;

  LoginCubit(this._loginRepository)
      : _appPreferences = instance.get(),
        super(LoginState());
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<void> login() async {
    showProgressDialog();
    emit(state.copyWith(status: LoginStatus.loading));
    final response = await _loginRepository.loginUser({
      "email": emailController.text,
      "password": passController.text,
    });
    dismissProgressDialog();
    response.fold(
      (failure) {
        emit(state.copyWith(status: LoginStatus.failure));
      },
      (data) async {
        emit(state.copyWith(status: LoginStatus.success));
        _appPreferences.setIsUserLoggedIn();
        GetContext.to(HomeScreen());
      },
    );
  }
}
