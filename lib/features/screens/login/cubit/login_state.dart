part of 'login_cubit.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

class LoginState extends Equatable {
  final LoginStatus status;
  const LoginState({
    this.status = LoginStatus.initial,
  });

  LoginState copyWith({
    final LoginStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}
