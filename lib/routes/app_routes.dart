import 'package:flutter/material.dart';
import '../presentation/about_screen/about_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/daily_plan_screen/daily_plan_screen.dart';
import '../presentation/deatils_screen/deatils_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/progress_screen/progress_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/welcome_screen/welcome_screen.dart';

class Routes {
  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String aboutScreen = '/about_screen';

  static const String deatilsScreen = '/deatils_screen'; // (Consider renaming "deatils" to "details" in your project for clarity)

  static const String dailyPlanScreen = '/daily_plan_screen';

  static const String progressScreen = '/progress_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileInitialPage = '/profile_initial_page';

  static const String appNavigationScreen = '/app_navigation_screen';
  
  static const String initialRoute = '/welcome_screen';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreen: (context) => WelcomeScreen(),
        loginScreen: (context) => LoginScreen(),
        signupScreen: (context) => SignupScreen(),
        aboutScreen: (context) => AboutScreen(),
        deatilsScreen: (context) => DeatilsScreen(),
        dailyPlanScreen: (context) => DailyPlanScreen(),
        progressScreen: (context) => ProgressScreen(),
        profileScreen: (context) => ProfileScreen(),
        appNavigationScreen: (context) => AppNavigationScreen(),
      };
}
