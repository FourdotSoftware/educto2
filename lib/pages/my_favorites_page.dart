import 'package:educto2/pages/content_page.dart';
import 'package:educto2/widgets/my_drawer.dart';
import 'package:educto2/widgets/navbar.dart';

import '../main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../models/content_model.dart';
import 'home_page.dart';

class MyFavoritesPage extends StatefulWidget {
  MyFavoritesPage({Key? key}) : super(key: key);
  final List<ContentModel> favorilerlist = [
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 34726,
      isLiked: false,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 7626,
      isLiked: false,
      title: "Okuldaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 34726,
      isLiked: false,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 7626,
      isLiked: false,
      title: "Okuldaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    )
  ];

  @override
  State<MyFavoritesPage> createState() => _MyFavoritesPageState();
}

class _MyFavoritesPageState extends State<MyFavoritesPage> {
  bool hasData = true;
  var scaffoldKey4 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return myFavoritesPage(key: scaffoldKey4);
  }

  Widget myFavoritesPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: MyDrawer(),
        bottomNavigationBar: Navbar(),
        backgroundColor: MyColors.secondary,
        appBar:
            appBar(title: MyTexts.favoritesTitle, key: key, context: context),
        body: hasData ? contentField() : noContent(),
      ),
    );
  }

  Widget contentField() {
    return MyPaddings.pagePaddingSymmetric(
      child: ListView.builder(
        itemCount: widget.favorilerlist.length,
        itemBuilder: (BuildContext context, int index) {
          return contentBar(
              image: widget.favorilerlist[index].coverPhoto,
              title: widget.favorilerlist[index].title,
              shortDesc: widget.favorilerlist[index].content,
              page: ContentPage(content: widget.favorilerlist[index]),
              context: context,
              readCount: widget.favorilerlist[index].viewCount.toString());
        },
      ),
    );
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
