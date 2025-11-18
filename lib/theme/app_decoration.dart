import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange90002,
      );
  static BoxDecoration get fillDeepOrange90005 => BoxDecoration(
        color: appTheme.deepOrange90005,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.0),
          end: Alignment(0.5, 1.0),
          colors: [
            appTheme.black900,
            theme.colorScheme.primary,
            appTheme.black900,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.5, 1.0),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onError,
            appTheme.deepOrange900,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToDeepOrange900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.5, 1.0),
          colors: [
            theme.colorScheme.primary,
            appTheme.orange900,
            appTheme.deepOrange900,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToDeepOrange9001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.0),
          end: Alignment(0.5, 1.0),
          colors: [
            theme.colorScheme.primary,
            appTheme.deepOrange900,
          ],
        ),
      );
  static BoxDecoration get gradientRedToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.0),
          end: Alignment(0.5, 1.0),
          colors: [
            appTheme.red900,
            appTheme.gray900,
            appTheme.black900,
          ],
        ),
      );
}
class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder66 => BorderRadius.circular(
        66.h,
      );
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
}
