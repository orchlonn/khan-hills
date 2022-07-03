import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';

extension CustomStyles on TextTheme {
  static TextStyle textMediumBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle textMediumSemiBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textSmallmSemiBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none);
  }

  static TextStyle textSmallNormal(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none);
  }

  static TextStyle textMinimSemiBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textMiniNormal(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textLittleMiniNormal(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textLittleMiniSemiBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textLargeBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 32,
      fontWeight: FontWeight.w700,
    );
  }
}
