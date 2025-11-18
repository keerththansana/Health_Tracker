import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(
        AppNavigationState(
          appNavigationModelObj: AppNavigationModel(),
        ),
      )..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xFFFFFFFF),
            body: Column(
              children: [
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Text(
                    "App Navigation",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF000000),
                      fontSize: 20.fSize,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Check your app's UI from the below demo screens of your app.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF888888),
                      fontSize: 16.fSize,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: const Color(0xFF000000),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          _buildScreenTitle(
                            context,
                            screenTitle: "Welcome Screen",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.welcomeScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Login",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.loginScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "SignUp",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.signupScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "About",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.aboutScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Details",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.deatilsScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Daily plan",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.dailyPlanScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Progress",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.progressScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Profile",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.profileScreen),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              screenTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF000000),
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: const Color(0xFF888888),
          ),
        ],
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigationService.pushNamed(routeName);
  }
}

class AppRoutes {
  static String welcomeScreen = '/welcome';
  static String loginScreen = '/login';
  static String signupScreen = '/signup';
  static String aboutScreen = '/about';
  static String deatilsScreen = '/details';
  static String dailyPlanScreen = '/daily-plan';
  static String progressScreen = '/progress';
  static String profileScreen = '/profile';
}

class NavigationService {
  static void pushNamed(String routeName) {}
}

extension on int {
  get fSize => null;
}
