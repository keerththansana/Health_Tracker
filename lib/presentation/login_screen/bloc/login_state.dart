part of 'login_bloc.dart';

/// Represents the state of Login in the application.


class LoginState extends Equatable {
  LoginState({
    this.emailtwoController,
    this.passwordtwoController,
    this.isShowPassword = true,
    this.loginModelobj,
  });

  TextEditingController? emailtwoController;
  TextEditingController? passwordtwoController;
  LoginModel? loginModelobj;
  bool isShowPassword;

  @override
  List<Object?> get props => [
    emailtwoController,
    passwordtwoController,
    isShowPassword,
    loginModelobj
  ];

  LoginState copyWith({
    TextEditingController? emailtwoController,
    TextEditingController? passwordtwoController,
    bool? isShowPassword,
    LoginModel? loginModelobj,
  }) {
    return LoginState(
      emailtwoController: emailtwoController ?? this.emailtwoController,
      passwordtwoController: passwordtwoController ?? this.passwordtwoController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelobj: loginModelobj ?? this.loginModelobj,
    );
  }
}
