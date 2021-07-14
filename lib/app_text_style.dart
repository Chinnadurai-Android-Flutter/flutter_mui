import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mui/app_fonts.dart';
import 'package:flutter_mui/dimen.dart';

class AppTextStyle {
  static TextStyle small({Color? color, Color? backgroundColor}) {
    return TextStyle(
      color: color ?? Colors.grey,
      fontSize: TextSize.SMALL,
      fontStyle: FontStyle.normal,
      fontFamily: AppFonts.poppins,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle smallBold({Color? color, Color? backgroundColor}) {
    return TextStyle(
        color: color ?? Colors.grey,
        fontSize: TextSize.SMALL,
        fontStyle: FontStyle.normal,
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.bold,
        backgroundColor: backgroundColor ?? Colors.transparent);
  }

  static TextStyle normal({Color? color, Color? backgroundColor}) {
    return TextStyle(
        color: color ?? Colors.grey,
        fontSize: TextSize.MEDIUM,
        fontStyle: FontStyle.normal,
        backgroundColor: backgroundColor ?? Colors.transparent,
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.normal);
  }

  static TextStyle normalBold({Color? color, Color? backgroundColor}) {
    return TextStyle(
      color: color ?? Colors.grey,
      fontSize: TextSize.MEDIUM,
      fontStyle: FontStyle.normal,
      fontFamily: AppFonts.poppins,
      backgroundColor: backgroundColor ?? Colors.transparent,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle medium({Color? color, Color? backgroundColor}) {
    return TextStyle(
        color: color ?? Colors.grey,
        fontSize: TextSize.LARGE,
        fontStyle: FontStyle.normal,
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.normal,
        backgroundColor: backgroundColor ?? Colors.transparent);
  }

  static TextStyle mediumBold({Color? color, Color? backgroundColor}) {
    return TextStyle(
        decoration: TextDecoration.none,
        color: color ?? Colors.grey,
        fontSize: TextSize.LARGE,
        backgroundColor: backgroundColor ?? Colors.transparent,
        fontStyle: FontStyle.normal,
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.bold);
  }

  static TextStyle largeBold({Color? color, Color? backgroundColor}) {
    return TextStyle(
      color: color ?? Colors.grey,
      fontSize: TextSize.XX_LARGE,
      fontStyle: FontStyle.normal,
      backgroundColor: backgroundColor ?? Colors.transparent,
      fontFamily: AppFonts.poppinsBold,
    );
  }

  static TextStyle large({Color? color, Color? backgroundColor}) {
    return TextStyle(
      color: color ?? Colors.grey,
      fontSize: TextSize.LARGE,
      fontStyle: FontStyle.normal,
      backgroundColor: backgroundColor ?? Colors.transparent,
      fontFamily: AppFonts.poppins,
    );
  }

  static TextStyle extraLarge({Color? color, Color? backgroundColor}) {
    return TextStyle(
      decoration: TextDecoration.none,
      color: color ?? Colors.grey,
      fontSize: TextSize.XXX_LARGE,
      fontStyle: FontStyle.normal,
      fontFamily: AppFonts.poppins,
      fontWeight: FontWeight.bold,
      backgroundColor: backgroundColor ?? Colors.transparent,
    );
  }

  static TextStyle extraLargeBold({Color? color, Color? backgroundColor}) {
    return TextStyle(
      color: color ?? Colors.grey,
      fontSize: TextSize.XXXX_LARGE,
      fontStyle: FontStyle.normal,
      backgroundColor: backgroundColor ?? Colors.transparent,
      fontFamily: AppFonts.poppins,
      fontWeight: FontWeight.bold,
    );
  }
}
