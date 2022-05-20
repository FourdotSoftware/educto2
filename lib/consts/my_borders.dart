import 'my_colors.dart';
import 'package:flutter/material.dart';

class MyBorders {
  static OutlineInputBorder border1({isfocused = false}) => OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        width: 2,
        color: isfocused ? MyColors.primary : MyColors.tertiary,
      ));

  static RoundedRectangleBorder border2(
          {bool isSelectedd = false, bool isLight = false}) =>
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            width: 1,
            color: isLight
                ? Colors.white
                : isSelectedd
                    ? MyColors.primary
                    : MyColors.tertiary,
          ));
}
