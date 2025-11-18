import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.black900,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.gray30001,
          width: 1,
        ),
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primary,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray200,
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900.withOpacity(0.8),
          fontSize: 12.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 40.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w200,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 35.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 32.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 28.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 25.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w800,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 12.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 20.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray200,
          fontSize: 16.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 15.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFFFF6B00),
    primaryContainer: Color(0xFF1B1F26),
    secondaryContainer: Color(0xFFBF6A02),
    errorContainer: Color(0xFF8C3B00),
    onError: Color(0xFFD75A00),
    onErrorContainer: Color(0xFFFFFFFF),
    onPrimary: Color(0xFF1B0C01),
    onPrimaryContainer: Color(0xFFFFBA89),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0xFF000000);

  // Deep Orange
  Color get deepOrange400 => Color(0xFFFF7F50);
  Color get deepOrange900 => Color(0xFF994000);
  Color get deepOrange90001 => Color(0xFFAA4700);
  Color get deepOrange90002 => Color(0xFFB04A01);
  Color get deepOrange90003 => Color(0xFFB24A00);
  Color get deepOrange90004 => Color(0xFFA84600);
  Color get deepOrange90005 => Color(0xFFB04B01);

  // Gray
  Color get gray200 => Color(0xFFF0F0F0);
  Color get gray300 => Color(0xFFE0E0E0);
  Color get gray30001 => Color(0xFFE3E4E8);
  Color get gray50 => Color(0xFFFEF7FF);
  Color get gray900 => Color(0xFF3A1800);

  // Orange
  Color get orange900 => Color(0xFFDD5C00);
  Color get orange90001 => Color(0xFFE75D00);
  Color get orangeA700 => Color(0xFFFD6A00);

  // Red
  Color get red900 => Color(0xFF753100);

  // White
  Color get whiteA700 => Color(0xFFFFFDFD);
  Color get whiteA70001 => Color(0xFFFFFEDB);
}
