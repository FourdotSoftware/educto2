import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'home_page.dart';
import 'interest_page.dart';

class ForMePage extends StatefulWidget {
  const ForMePage({Key? key}) : super(key: key);

  @override
  State<ForMePage> createState() => _ForMePageState();
}

class _ForMePageState extends State<ForMePage> {
  @override
  Widget build(BuildContext context) {
    return forMePage();
  }

  Scaffold forMePage() {
    return Scaffold(
      backgroundColor: MyColors.secondary,
      appBar: appBar(title: MyTexts.forMe),
      body: MyPaddings.pagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                interestChip(title: "Teknoloji", isLight: true),
                interestChip(title: "Bilim", isLight: true),
                interestChip(title: "Müzik", isLight: true),
                interestChip(title: "Coğrafya", isLight: true),
                interestChip(title: "Spor", isLight: true)
              ],
            ),
            myDvider(),
            MyPaddings.standartPadding(
              child: Text(
                MyTexts.forMeInfo,
                style: MyTextstyles.info(isMini: true),
              ),
            ),
            contentBar(
                image: "photo1.jpg",
                readCount: "1069",
                title: MyTexts.contentTitle,
                shortDesc: MyTexts.contentShort),
            contentBar(
                image: "photo1.jpg",
                readCount: "785",
                title: MyTexts.contentTitle2,
                shortDesc: MyTexts.contentShort),
            contentBar(
                image: "photo1.jpg",
                readCount: "1069",
                title: MyTexts.contentTitle,
                shortDesc: MyTexts.contentShort),
            contentBar(
                image: "photo1.jpg",
                readCount: "785",
                title: MyTexts.contentTitle2,
                shortDesc: MyTexts.contentShort),
            contentBar(
                image: "photo1.jpg",
                readCount: "1069",
                title: MyTexts.contentTitle,
                shortDesc: MyTexts.contentShort),
            contentBar(
                image: "photo1.jpg",
                readCount: "785",
                title: MyTexts.contentTitle2,
                shortDesc: MyTexts.contentShort)
          ],
        ),
      ),
    );
  }
}

Widget myDvider() => MyPaddings.standartPadding(
      child: Container(
        height: 4,
        color: MyColors.navbar,
      ),
    );
