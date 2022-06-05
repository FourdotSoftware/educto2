import 'package:educto2/pages/content_page.dart';
import 'package:educto2/widgets/my_drawer.dart';
import 'package:educto2/widgets/navbar.dart';

import '../main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../models/content_model.dart';
import 'home_page.dart';

class LastEditPage extends StatefulWidget {
  LastEditPage({Key? key}) : super(key: key);
  final List<ContentModel> sonEklenenlerlist = [
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
  State<LastEditPage> createState() => _LastEditPageState();
}

class _LastEditPageState extends State<LastEditPage> {
  var scaffoldKey3 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return lastEditPage(key: scaffoldKey3);
  }

  Widget lastEditPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: MyDrawer(),
        bottomNavigationBar: Navbar(),
        backgroundColor: MyColors.secondary,
        appBar: appBar(
            title: MyTexts.lastEditTitle,
            isSlogan: false,
            key: key,
            context: context),
        body: SingleChildScrollView(
          child: MyPaddings.pagePaddingSymmetric(
              child: SizedBox(
            height: 900,
            child: ListView.builder(
                itemCount: widget.sonEklenenlerlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return contentBar(
                      image: widget.sonEklenenlerlist[index].coverPhoto,
                      title: widget.sonEklenenlerlist[index].title,
                      context: context,
                      page:
                          ContentPage(content: widget.sonEklenenlerlist[index]),
                      shortDesc: widget.sonEklenenlerlist[index].content,
                      readCount:
                          widget.sonEklenenlerlist[index].viewCount.toString());
                }),
          )),
        ),
      ),
    );
  }
}
