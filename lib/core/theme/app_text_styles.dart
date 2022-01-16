import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core.dart';

abstract class AppTextStyles {
  TextStyle get gradientTitle;
  TextStyle get recieveTitle;
  TextStyle get payableTitle;
  TextStyle get recieveSubtitle;
  TextStyle get payableSubtitle;
  TextStyle get recieveText;
  TextStyle get payableText;
  TextStyle get subtitleMoney;
  TextStyle get textSimple;
  TextStyle get textSimpleSemiBold;
  TextStyle get textSimpleBold;
  TextStyle get textSimpleOpacity;
  TextStyle get textSimpleContrast;
  TextStyle get subtitleSimple;
  TextStyle get subtitleSimpleOpacity;
  TextStyle get titleSimple;
  TextStyle get titleSimpleBold;
  TextStyle get bigText;
  TextStyle get textButton;
  TextStyle get headerText;
  TextStyle get headerTextContrast;
  TextStyle get appBarTitle;
  TextStyle get titleGroup;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get gradientTitle => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        height: 45 / 40,
        foreground: Paint()
          ..shader = AppTheme.gradients.background
              .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
      );

  @override
  TextStyle get appBarTitle => GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        height: 27 / 22,
        color: AppTheme.colors.textBold,
      );

  @override
  TextStyle get bigText => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.textGradient,
      );

  @override
  TextStyle get headerText => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 17 / 14,
        color: AppTheme.colors.text,
      );

  @override
  TextStyle get headerTextContrast => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 17 / 14,
        color: AppTheme.colors.textContrast,
      );

  @override
  TextStyle get payableSubtitle => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 14 / 12,
        color: AppTheme.colors.payable,
      );

  @override
  TextStyle get payableText => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 19 / 16,
        color: AppTheme.colors.payable,
      );

  @override
  TextStyle get payableTitle => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 24 / 20,
        color: AppTheme.colors.payable,
      );

  @override
  TextStyle get recieveSubtitle => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 14 / 12,
        color: AppTheme.colors.receive,
      );

  @override
  TextStyle get recieveText => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 19 / 16,
        color: AppTheme.colors.receive,
      );

  @override
  TextStyle get recieveTitle => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 24 / 20,
        color: AppTheme.colors.receive,
      );

  @override
  TextStyle get subtitleMoney => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        color: AppTheme.colors.text,
      );

  @override
  TextStyle get subtitleSimple => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 18 / 12,
        color: AppTheme.colors.text,
      );

  @override
  TextStyle get subtitleSimpleOpacity => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 18 / 12,
        color: AppTheme.colors.textOpacity,
      );

  @override
  TextStyle get textButton => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 15 / 12,
        color: AppTheme.colors.textBold,
      );

  @override
  TextStyle get textSimple => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 19 / 16,
        color: AppTheme.colors.text,
      );

  @override
  TextStyle get textSimpleBold => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 19 / 16,
        color: AppTheme.colors.textBold,
      );

  @override
  TextStyle get textSimpleContrast => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 19 / 16,
        color: AppTheme.colors.textContrast,
      );

  @override
  TextStyle get textSimpleOpacity => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 19 / 16,
        color: AppTheme.colors.textOpacity,
      );

  @override
  TextStyle get textSimpleSemiBold => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 19 / 16,
        color: AppTheme.colors.textBold,
      );

  @override
  TextStyle get titleGroup => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 17 / 14,
        color: AppTheme.colors.textBold,
      );

  @override
  TextStyle get titleSimple => GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        height: 29 / 24,
        color: AppTheme.colors.textBold,
      );

  @override
  TextStyle get titleSimpleBold => GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 29 / 24,
        color: AppTheme.colors.textBold,
      );
}
