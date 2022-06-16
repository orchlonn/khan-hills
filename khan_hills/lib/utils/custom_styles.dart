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
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }
}
