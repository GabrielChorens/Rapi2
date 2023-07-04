// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class Rapi2Themes {
  const Rapi2Themes();

  ThemeData get rapi2Light => ThemeData.from(
              colorScheme: _lightTheme,
              textTheme: _textTheme,
              useMaterial3: true)
          .copyWith(
        dialogTheme: DialogTheme(
          titleTextStyle: _textTheme.headlineSmall,
          contentTextStyle: _textTheme.bodyLarge?.copyWith(
            color: ColorsX.grays50,
          ),
          alignment: Alignment.center,
          actionsPadding:
              const EdgeInsets.fromLTRB(25, 10, 25, 25),
        ),

        /// [FilledButton] theme
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
          ),
        ),

        /// [OutlinedButton] theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
          ),
        ),
      );

  ThemeData get rapi2Dark => rapi2Light.copyWith(
        colorScheme: _darkTheme,
      );

  final _lightTheme = const ColorScheme(
    brightness: Brightness.light,
    primary: ColorsX.grays80P,
    onPrimary: ColorsX.primary50P,
    primaryContainer: ColorsX.grays80P,
    onPrimaryContainer: ColorsX.primary50P,
    secondary: ColorsX.grays30,
    onSecondary: ColorsX.grays10,
    secondaryContainer: ColorsX.grays10,
    onSecondaryContainer: ColorsX.grays40,
    tertiary: ColorsX.primary20,
    onTertiary: ColorsX.primary80,
    tertiaryContainer: ColorsX.primary20,
    onTertiaryContainer: ColorsX.primary80,
    error: ColorsX.error50P,
    onError: ColorsX.error20,
    errorContainer: ColorsX.error20,
    onErrorContainer: ColorsX.error70,
    background: ColorsX.base00,
    onBackground: ColorsX.grays80P,
    surface: ColorsX.grays10,
    onSurface: ColorsX.grays80P,
    surfaceVariant: ColorsX.grays80P,
    onSurfaceVariant: ColorsX.primary80,
    outline: ColorsX.grays30,
    outlineVariant: ColorsX.primary50P,
    shadow: ColorsX.base100,
    scrim: ColorsX.grays80P,
    inverseSurface: ColorsX.primary50P,
    onInverseSurface: ColorsX.grays80P,
    inversePrimary: ColorsX.grays80P,
    surfaceTint: ColorsX.primary20,
  );

  final _darkTheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: ColorsX.grays80P,
    onPrimary: ColorsX.primary50P,
    primaryContainer: ColorsX.primary50P,
    onPrimaryContainer: ColorsX.grays80P,
    secondary: ColorsX.grays50,
    onSecondary: ColorsX.grays30,
    secondaryContainer: ColorsX.grays50,
    onSecondaryContainer: ColorsX.grays30,
    tertiary: ColorsX.primary80,
    onTertiary: ColorsX.primary20,
    tertiaryContainer: ColorsX.primary80,
    onTertiaryContainer: ColorsX.primary20,
    error: ColorsX.error50P,
    onError: ColorsX.error20,
    errorContainer: ColorsX.error70,
    onErrorContainer: ColorsX.error20,
    background: ColorsX.grays80P,
    onBackground: ColorsX.base00,
    surface: ColorsX.grays80P,
    onSurface: ColorsX.base00,
    surfaceVariant: ColorsX.primary50P,
    onSurfaceVariant: ColorsX.grays80P,
    outline: ColorsX.grays70,
    outlineVariant: ColorsX.primary50P,
    shadow: ColorsX.grays70,
    scrim: ColorsX.grays80P,
    inverseSurface: ColorsX.primary50P,
    onInverseSurface: ColorsX.grays80P,
    inversePrimary: ColorsX.grays80P,
    surfaceTint: ColorsX.primary20,
  );

  TextTheme get _textTheme {
    final font = GoogleFonts.urbanistTextTheme();
    return font.copyWith(
      displayLarge: font.displayLarge?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 56,
      ),
      displayMedium: font.displayMedium?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 45,
      ),
      displaySmall: font.displaySmall?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 34,
      ),
      headlineSmall: font.headlineSmall?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      titleLarge: font.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      bodyLarge: font.bodyLarge?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      bodyMedium: font.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      bodySmall: font.bodySmall?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      labelLarge: font.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      labelMedium: font.labelMedium?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      labelSmall: font.labelSmall?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 10,
      ),
    );
  }
}

extension ColorsX on Colors {
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
