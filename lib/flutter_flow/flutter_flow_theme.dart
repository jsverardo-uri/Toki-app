// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;
  String get titlesFamily => typography.titlesFamily;
  TextStyle get titles => typography.titles;
  String get subTitlesFamily => typography.subTitlesFamily;
  TextStyle get subTitles => typography.subTitles;
  String get bodyFamily => typography.bodyFamily;
  TextStyle get body => typography.body;
  String get buttonsFamily => typography.buttonsFamily;
  TextStyle get buttons => typography.buttons;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF5F7A61);
  late Color secondary = const Color(0xFF7C9A7E);
  late Color tertiary = const Color(0xFFFF46A2);
  late Color alternate = const Color(0xFFFF46A2);
  late Color primaryText = const Color(0xFF2F3E2F);
  late Color secondaryText = const Color(0xFFFCFCF6);
  late Color primaryBackground = const Color(0xFFF5F5E6);
  late Color secondaryBackground = const Color(0xFFFCFCF6);
  late Color accent1 = const Color(0xFFA3B18A);
  late Color accent2 = const Color(0xFFFF46A2);
  late Color accent3 = const Color(0xFFFF46A2);
  late Color accent4 = const Color(0xFFFF46A2);
  late Color success = const Color(0xFF6F9B86);
  late Color warning = const Color(0xFFC48A5A);
  late Color error = const Color(0xFFB56A6A);
  late Color info = const Color(0xFF6F88A8);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
  String get titlesFamily;
  TextStyle get titles;
  String get subTitlesFamily;
  TextStyle get subTitles;
  String get bodyFamily;
  TextStyle get body;
  String get buttonsFamily;
  TextStyle get buttons;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter Tight';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.interTight(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Roboto';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Roboto';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 34.0,
      );
  String get headlineLargeFamily => 'Roboto';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineMediumFamily => 'Roboto';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineSmallFamily => 'Roboto';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Roboto';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
      );
  String get titleMediumFamily => 'Space Grotesk';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.spaceGrotesk(
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get titleSmallFamily => 'Space Grotesk';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.spaceGrotesk(
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Space Grotesk';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.spaceGrotesk(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Space Grotesk';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.spaceGrotesk(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Space Grotesk';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.spaceGrotesk(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Roboto';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get bodyMediumFamily => 'Space Grotesk';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.spaceGrotesk(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Space Grotesk';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.spaceGrotesk(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get titlesFamily => 'Roboto';
  TextStyle get titles => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get subTitlesFamily => 'Roboto';
  TextStyle get subTitles => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get bodyFamily => 'Roboto';
  TextStyle get body => GoogleFonts.roboto(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get buttonsFamily => 'Roboto';
  TextStyle get buttons => GoogleFonts.roboto(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
