import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/welcome_bloc.dart';
import 'models/welcome_model.dart';
// Ensure this import is correct and points to the file where AppRoutes is defined

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
      create: (context) => WelcomeBloc(WelcomeState(welcomeModelObj: WelcomeModel()))
        ..add(WelcomeInitialEvent()),
      child: const WelcomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 8.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img8bbe484b1091ae9,
                        height: 610.h,
                        width: double.maxFinite,
                      ),
                      SizedBox(height: 34.h),
                      _buildIntroSection(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildIntroSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Text(
                  "msg_workout_for_health".tr,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(height: 18.h),
                Text(
                  "msg_your_journey_to".tr,
                  style: CustomTextStyles.bodyLargeRobotoOnErrorContainer,
                ),
                SizedBox(height: 58.h),
                CustomElevatedButton(
                  height: 50.h,
                  text: "lbl_get_started".tr,
                  margin: EdgeInsets.only(left: 44.h, right: 42.h),
                  buttonTextStyle: CustomTextStyles.headlineSmallOnErrorContainer,
                  onPressed: () => onTapGetStarted(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  void onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }
}


