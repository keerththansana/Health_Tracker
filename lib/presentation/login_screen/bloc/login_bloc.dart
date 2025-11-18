import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../models/login_model.dart';
import '../../../core/app_export.dart';
part 'login_event.dart';
part 'login_state.dart';


/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  Future<void> _onInitialize(
    LoginInitialEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      emailtwoController: TextEditingController(),
      passwordtwoController: TextEditingController(),
      isShowPassword: true,
    ));
  }

  void _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }
}
