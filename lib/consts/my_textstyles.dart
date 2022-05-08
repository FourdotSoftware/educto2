import 'package:educto2/consts/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextstyles {
  static FontWeight getWeight(isBold) =>
      isBold ? FontWeight.w700 : FontWeight.w400;

  static TextStyle title1({bool isLight = true}) => GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 24,
        fontWeight: getWeight(true),
      );
  static TextStyle title2({isLight = true}) => GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 20,
        fontWeight: getWeight(true),
      );
  static TextStyle title3({isLight = true, bool isBold = true}) =>
      GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 16,
        fontWeight: getWeight(isBold),
      );

  static TextStyle bodyText2({isLight = false, isBold = false}) =>
      GoogleFonts.ptSans(
          color: isLight ? Colors.white : MyColors.tertiary,
          fontSize: 12,
          fontWeight: getWeight(isBold));

  static TextStyle bodyText1({isLight = false}) => GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 14,
        fontWeight: getWeight(false),
      );
  static TextStyle navbar({isLight = true}) => GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 9,
        fontWeight: getWeight(false),
      );
  static TextStyle info({isLight = true, isMini = false}) => GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: isMini ? 10 : 12,
        fontWeight: getWeight(false),
        fontStyle: FontStyle.italic,
      );

  static TextStyle title({bool isLight = true}) => GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 28,
        fontWeight: getWeight(true),
      );
}
