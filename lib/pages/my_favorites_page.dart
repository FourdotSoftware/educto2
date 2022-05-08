import 'package:educto2/main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'home_page.dart';

class MyFavoritesPage extends StatefulWidget {
  const MyFavoritesPage({Key? key}) : super(key: key);

  @override
  State<MyFavoritesPage> createState() => _MyFavoritesPageState();
}

class _MyFavoritesPageState extends State<MyFavoritesPage> {
  bool hasData = false;

  @override
  Widget build(BuildContext context) {
    return myFavoritesPage();
  }

  Scaffold myFavoritesPage() {
    return Scaffold(
      bottomNavigationBar: navBar(context),
      backgroundColor: MyColors.secondary,
      appBar: appBar(title: MyTexts.favoritesTitle),
      body: hasData ? contentField() : noContent(),
    );
  }

  SingleChildScrollView contentField() {
    return SingleChildScrollView(
        child: MyPaddings.pagePaddingSymmetric(
            child: Column(children: [
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
          readCount: "1069")
    ])));
  }

  Row noContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              color: MyColors.tertiary,
              size: 64,
            ),
            MyPaddings.standartPadding(
              child: Text(
                MyTexts.favoriteShort,
                style: MyTextstyles.bodyText1(),
              ),
            )
          ],
        ),
      ],
    );
  }
}
