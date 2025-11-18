import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get lato => copyWith(
        fontFamily: 'Lato',
      );

  TextStyle get roboto => copyWith(
        fontFamily: 'Roboto',
      );

  TextStyle get inter => copyWith(
        fontFamily: 'Inter',
      );
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply different font families.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeRobotoOnErrorContainer =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.0,
      );

  static TextStyle get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodyMediumRobotoWhiteA70001 => theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 15.0,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodySmallGray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
      );

  static TextStyle get bodySmallGray200_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
      );

  static TextStyle get bodySmallInter => theme.textTheme.bodySmall!.inter;

  static TextStyle get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );

  static TextStyle get bodySmallOnErrorContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );

  static TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );

  // Headline text style
  static TextStyle get headlineLargeExtraBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );

  static TextStyle get headlineSmallOnErrorContainer => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      );

  // Label text style
  static TextStyle get labelLargeGray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray200,
      );

  // Title text style
  static TextStyle get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w800,
      );

  static TextStyle get titleLargeRobotoBold => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
}
