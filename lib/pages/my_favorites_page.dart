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
  var scaffoldKey4 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return myFavoritesPage(key: scaffoldKey4);
  }

  Widget myFavoritesPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: drawer(),
        bottomNavigationBar: navBar(context),
        backgroundColor: MyColors.secondary,
        appBar: appBar(title: MyTexts.favoritesTitle, key: key),
        body: hasData ? contentField() : noContent(),
      ),
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
          context: context,
          readCount: "1069"),
      contentBar(
          image: "photo1.jpg",
          context: context,
          title: MyTexts.contentTitle,
          shortDesc: MyTexts.contentShort,
          readCount: "1069"),
      contentBar(
          image: "photo1.jpg",
          context: context,
          title: MyTexts.contentTitle,
          shortDesc: MyTexts.contentShort,
          readCount: "1069"),
      contentBar(
          image: "photo1.jpg",
          title: MyTexts.contentTitle,
          context: context,
          shortDesc: MyTexts.contentShort,
          readCount: "1069"),
      contentBar(
          image: "photo1.jpg",
          title: MyTexts.contentTitle,
          context: context,
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
