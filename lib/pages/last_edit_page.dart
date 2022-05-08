import 'package:educto2/main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import 'home_page.dart';

class LastEditPage extends StatefulWidget {
  const LastEditPage({Key? key}) : super(key: key);

  @override
  State<LastEditPage> createState() => _LastEditPageState();
}

class _LastEditPageState extends State<LastEditPage> {
  @override
  Widget build(BuildContext context) {
    return lastEditPage();
  }

  Scaffold lastEditPage() {
    return Scaffold(
      bottomNavigationBar: navBar(context),
      backgroundColor: MyColors.secondary,
      appBar: appBar(
        title: MyTexts.lastEditTitle,
        isSlogan: false,
      ),
      body: SingleChildScrollView(
        child: MyPaddings.pagePaddingSymmetric(
          child: Column(
            children: [
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
              contentBar(
                  image: "photo1.jpg",
                  title: MyTexts.contentTitle,
                  shortDesc: MyTexts.contentShort,
                  readCount: "1069"),
            ],
          ),
        ),
      ),
    );
  }
}
