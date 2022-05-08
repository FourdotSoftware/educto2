import 'package:educto2/consts/my_texts.dart';
import 'package:flutter/cupertino.dart';

import 'my_textstyles.dart';

class MyPaddings {
  static Padding standartPadding({Widget? child}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      );

  static Padding spacePadding({Widget? child}) => Padding(
        padding: const EdgeInsets.all(0.5),
        child: child,
      );
  static Padding spacePadding2({Widget? child}) => Padding(
        padding: const EdgeInsets.all(1),
        child: child,
      );

  static Padding lowPadding({Widget? child}) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: child,
      );

  static Padding pagePadding({Widget? child}) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: child,
      );

  static Padding pagePaddingSymmetric({Widget? child}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: child,
      );

  static Padding notificationPadding({Widget? child}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: child,
      );

  static Padding pagePaddingSymmetric2({Widget? child}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: child,
      );
  static Padding pagePaddingSymmetric3({Widget? child}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: child,
      );
}
