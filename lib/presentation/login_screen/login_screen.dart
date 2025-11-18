import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildWelcomeSection(context),
                  SizedBox(height: 12.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      children: [
                        Text(
                          "msg_log_in_to_your_account".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 24.h),
                        _buildLoginFormSection(context),
                        SizedBox(height: 6.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "msg_forgot_password".tr,
                            style: CustomTextStyles.bodySmallPrimary,
                          ),
                        ),
                        SizedBox(height: 46.h),
                        CustomElevatedButton(
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(left: 66.h, right: 70.h),
                          buttonTextStyle:
                              CustomTextStyles.titleLargeRobotoBold,
                        ),
                        SizedBox(height: 8.h),
                        GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: CustomTextStyles.bodySmallGray200_1,
                                ),
                                TextSpan(
                                  text: "lbl_sign_up_now".tr,
                                  style: CustomTextStyles.labelLargeGray200,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 44.h),
                        _buildSeparatorSection(context),
                        SizedBox(height: 32.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 94.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFacebook,
                                height: 30.h,
                                width: 32.h,
                                onTap: () {
                                  onTapImgFacebookone(context);
                                },
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgClock,
                                height: 30.h,
                                width: 32.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 30.h,
                                width: 32.h,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 36.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 42.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgGroup53),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          Text(
            "lbl_welcome_back".tr,
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 6.h),
          Text(
            "msg_log_in_to_continue".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.h),
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 112.h,
            width: 116.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginFormSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "lbl_email".tr,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 16.h),
        BlocSelector<LoginBloc, LoginState, TextEditingController?>(
          selector: (state) => state.emailtwoController,
          builder: (context, emailController) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "msg_enter_your_email".tr,
              textInputType: TextInputType.emailAddress,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 22.h, vertical: 8.h),
              validator: (value) {
                if (value == null || !isValidEmail(value, isRequired: true)) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        ),
        SizedBox(height: 16.h),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return CustomTextFormField(
              controller: state.passwordtwoController,
              hintText: "msg_enter_your_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: state.isShowPassword,
              suffix: InkWell(
                onTap: () {
                  context
                      .read<LoginBloc>()
                      .add(ChangePasswordVisibilityEvent(
                          value: !state.isShowPassword));
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgEyeOff,
                  height: 20.h,
                  width: 20.h,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.h),
              validator: (value) {
                if (value == null ||
                    !isValidPassword(value, isRequired: true)) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeparatorSection(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: appTheme.gray200)),
        SizedBox(width: 20.h),
        Text("lbl_or".tr, style: theme.textTheme.titleMedium),
        SizedBox(width: 20.h),
        Expanded(child: Divider(color: appTheme.gray200)),
      ],
    );
  }

  void onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signupScreen);
  }

  Future<void> onTapImgFacebookone(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
