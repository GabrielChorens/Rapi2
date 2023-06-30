// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
final class Rapi2Themes {
  ThemeData get rapi2LightThemeData => ThemeData(
        textTheme: _textTheme,
        colorScheme: _lightTheme,
        splashColor: _splashColor,
        focusColor: _focusColor,
        dividerColor: _dividerColor,
        useMaterial3: true,
        dialogTheme: _dialogThemeData,
        fontFamily: _fontFamily,
        textButtonTheme: _getTextButtonTheme(_lightTheme),
        outlinedButtonTheme: _getOutlinedButtonThemeData(_lightTheme),
        iconTheme: _getIconThemeData(_lightTheme),
      );

  ThemeData get rapi2DarkThemeData => rapi2LightThemeData.copyWith(
        colorScheme: _darkTheme,
        textButtonTheme: _getTextButtonTheme(_darkTheme),
        outlinedButtonTheme: _getOutlinedButtonThemeData(_darkTheme),
        iconTheme: _getIconThemeData(_darkTheme)
      );

  final _lightTheme = const ColorScheme(
    brightness: Brightness.light,
    primary: _Colors.primary50P,
    onPrimary: _Colors.grays80P,
    primaryContainer: _Colors.grays80P,
    onPrimaryContainer: _Colors.primary50P,
    secondary: _Colors.grays30,
    onSecondary: _Colors.grays10,
    secondaryContainer: _Colors.grays10,
    onSecondaryContainer: _Colors.grays40,
    tertiary: _Colors.primary20,
    onTertiary: _Colors.primary80,
    tertiaryContainer: _Colors.primary20,
    onTertiaryContainer: _Colors.primary80,
    error: _Colors.error50P,
    onError: _Colors.error20,
    errorContainer: _Colors.error20,
    onErrorContainer: _Colors.error70,
    background: _Colors.base00,
    onBackground: _Colors.grays80P,
    surface: _Colors.grays10,
    onSurface: _Colors.grays80P,
    surfaceVariant: _Colors.grays80P,
    onSurfaceVariant: _Colors.primary80,
    outline: _Colors.grays30,
    outlineVariant: _Colors.primary50P,
    shadow: _Colors.base100,
    scrim: _Colors.grays80P,
    inverseSurface: _Colors.primary50P,
    onInverseSurface: _Colors.grays80P,
    inversePrimary: _Colors.grays80P,
    surfaceTint: _Colors.primary20,
  );

  final _darkTheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: _Colors.primary50P,
    onPrimary: _Colors.grays80P,
    primaryContainer: _Colors.primary50P,
    onPrimaryContainer: _Colors.grays80P,
    secondary: _Colors.grays50,
    onSecondary: _Colors.grays30,
    secondaryContainer: _Colors.grays50,
    onSecondaryContainer: _Colors.grays30,
    tertiary: _Colors.primary80,
    onTertiary: _Colors.primary20,
    tertiaryContainer: _Colors.primary80,
    onTertiaryContainer: _Colors.primary20,
    error: _Colors.error50P,
    onError: _Colors.error20,
    errorContainer: _Colors.error70,
    onErrorContainer: _Colors.error20,
    background: _Colors.grays80P,
    onBackground: _Colors.base00,
    surface: _Colors.grays80P,
    onSurface: _Colors.base00,
    surfaceVariant: _Colors.primary50P,
    onSurfaceVariant: _Colors.grays80P,
    outline: _Colors.grays70,
    outlineVariant: _Colors.primary50P,
    shadow: _Colors.grays70,
    scrim: _Colors.grays80P,
    inverseSurface: _Colors.primary50P,
    onInverseSurface: _Colors.grays80P,
    inversePrimary: _Colors.grays80P,
    surfaceTint: _Colors.primary20,
  );

  final _textTheme = const TextTheme(
    displayLarge: _TextSyles.display3,
    displayMedium: _TextSyles.display2,
    displaySmall: _TextSyles.display1,
    headlineLarge: _TextSyles.headline,
    titleLarge: _TextSyles.title,
    headlineSmall: _TextSyles.label,
    bodyMedium: _TextSyles.body2,
    bodySmall: _TextSyles.body1,
    labelLarge: _TextSyles.caption,
    labelMedium: _TextSyles.button,
    labelSmall: _TextSyles.error,
  );

  final _splashColor = const Color(0xFFFCF4CA); // primary20
  final _focusColor = const Color(0xFFF5D437); // primary50P
  final _dividerColor = const Color(0xFFB3B3B3); // grays30
  final _useMaterial3 = true;
  final _fontFamily = 'Urbanist';

  final _dialogThemeData = DialogTheme(
    elevation: 24.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(34.0),
    ),
    titleTextStyle: _TextSyles.headline,
    contentTextStyle: _TextSyles.label,
    alignment: Alignment.center,
  );




  TextButtonThemeData _getTextButtonTheme(ColorScheme colorScheme) =>
      TextButtonThemeData(
          style: _buttonStyle.copyWith(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return colorScheme.secondaryContainer;
          }
          return colorScheme.primaryContainer;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return colorScheme.onSecondaryContainer;
          }
          return colorScheme.onPrimaryContainer;
        }),
      ));

  OutlinedButtonThemeData _getOutlinedButtonThemeData(
          ColorScheme colorScheme) =>
      OutlinedButtonThemeData(
        style: _buttonStyle.copyWith(
          side: MaterialStateProperty.all(
            BorderSide(
              color: colorScheme.outline,
              width: 1.0,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(
            colorScheme.onSurface,
          ),
        ),
      );

  IconThemeData _getIconThemeData(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onBackground,
      );

  final _buttonStyle = ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(48.0, double.infinity)),
    textStyle: MaterialStateProperty.all(_TextSyles.button),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 32.0)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48.0),
      ),
    ),
  );

  ///Possible addittions

// InputDecorationTheme? inputDecorationTheme
// ScrollbarThemeData? scrollbarTheme
// BottomNavigationBarThemeData? bottomNavigationBarTheme
// BottomSheetThemeData? bottomSheetTheme
// DrawerThemeData? drawerTheme
// DropdownMenuThemeData? dropdownMenuTheme
// ElevatedButtonThemeData? elevatedButtonTheme
// IconButtonThemeData? iconButtonTheme
// ListTileThemeData? listTileTheme
// SearchBarThemeData? searchBarTheme
// SearchViewThemeData? searchViewTheme
// FilledButtonThemeData? filledButtonTheme
}

abstract final class _Colors {
  // Base
  static const Color base100 = Color(0xFF000000);
  static const Color base00 = Color(0xFFFFFFFF);

  // Primary
  static const Color primary20 = Color(0xFFFCF4CA);
  static const Color primary30 = Color(0xFFFAE999);
  static const Color primary40 = Color(0xFFF7DF68);
  static const Color primary50P = Color(0xFFF5D437);
  static const Color primary60 = Color(0xFFEEC70C);
  static const Color primary70 = Color(0xFFBD9E09);
  static const Color primary80 = Color(0xFF8D7607);
  static const Color primary90 = Color(0xFF5C4D05);
  static const Color primary100 = Color(0xFF2C2502);

  // Grays
  static const Color grays10 = Color(0xFFE6E6E6);
  static const Color grays20 = Color(0xFFCCCCCC);
  static const Color grays30 = Color(0xFFB3B3B3);
  static const Color grays40 = Color(0xFF999999);
  static const Color grays50 = Color(0xFF808080);
  static const Color grays60 = Color(0xFF666666);
  static const Color grays70 = Color(0xFF4D4D4D);
  static const Color grays80P = Color(0xFF343434);
  static const Color grays90 = Color(0xFF1A1A1A);

  // Success
  static const Color success20 = Color(0xFFCAFCE3);
  static const Color success30 = Color(0xFF99FAC9);
  static const Color success40 = Color(0xFF68F7B0);
  static const Color success50P = Color(0xFF37F596);
  static const Color success60 = Color(0xFF0CEE7D);
  static const Color success70 = Color(0xFF09BD63);
  static const Color success80 = Color(0xFF078D4A);
  static const Color success90 = Color(0xFF055C30);
  static const Color success100 = Color(0xFF022C17);

  // Error
  static const Color error20 = Color(0xFFFCCCCA);
  static const Color error30 = Color(0xFFFA9E99);
  static const Color error40 = Color(0xFFF77068);
  static const Color error50P = Color(0xFFF54137);
  static const Color error60 = Color(0xFFEE170C);
  static const Color error70 = Color(0xFFBD1209);
  static const Color error80 = Color(0xFF8D0E07);
  static const Color error90 = Color(0xFF5C0905);
  static const Color error100 = Color(0xFF2C0402);
}

abstract final class _TextSyles {
  static const display3 =
      TextStyle(fontSize: 56.0, fontWeight: FontWeight.normal);
  static const display2 =
      TextStyle(fontSize: 45.0, fontWeight: FontWeight.normal);
  static const display1 =
      TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal);
  static const headline =
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600);
  static const title = TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600);
  static const label = TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
  static const body2 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);
  static const body1 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal);
  static const caption = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);
  static const button = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);
  static const error = TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal);
}
