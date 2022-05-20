import 'package:educto2/models/categori_model.dart';
import 'package:educto2/pages/content_page.dart';
import 'package:educto2/widgets/my_drawer.dart';

import '../main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../models/content_model.dart';
import 'for_me_page.dart';
import 'home_page.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key? key}) : super(key: key);
  final List<ContentModel> contentList = [
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
      isLiked: false,
      viewCount: 26,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 34726,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 7626,
      title: "Okuldaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 34726,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 7626,
      title: "Okuldaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    )
  ];
  final List<CategoriModel> categoriList = [
    CategoriModel(title: "Matematik", icon: Icons.add_box),
    CategoriModel(title: "Fizik", icon: Icons.add_box),
    CategoriModel(title: "Kimya", icon: Icons.add_box),
    CategoriModel(title: "Biyoloji", icon: Icons.add_box),
    CategoriModel(title: "Fen Bilimleri", icon: Icons.add_box),
    CategoriModel(title: "Türkçe", icon: Icons.add_box),
    CategoriModel(title: "Sosyal Bilimler", icon: Icons.add_box),
    CategoriModel(title: "Din", icon: Icons.add_box)
  ];

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  var scaffoldKey2 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return categoriesPage(key: scaffoldKey2);
  }

  Widget categoriesPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
          key: key,
          endDrawer: MyDrawer(),
          bottomNavigationBar: navBar(context),
          backgroundColor: MyColors.secondary,
          appBar: appBar(title: MyTexts.categories, key: key, context: context),
          body: MyPaddings.pagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 105,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.categoriList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return categoryButton(
                            title: widget.categoriList[index].title,
                            icon: widget.categoriList[index].icon);
                      }),
                ),
                myDvider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.contentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return contentBar(
                          image: widget.contentList[index].coverPhoto,
                          readCount:
                              widget.contentList[index].viewCount.toString(),
                          title: widget.contentList[index].title,
                          context: context,
                          page: ContentPage(content: widget.contentList[index]),
                          shortDesc: widget.contentList[index].content);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget categoryButton(
          {String? title, IconData? icon, bool isSelected = false}) =>
      MyPaddings.spacePadding(
        child: Column(
          children: [
            Container(
              child: Icon(icon, color: Colors.white),
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  color: isSelected ? MyColors.navbar : MyColors.primary,
                  borderRadius: BorderRadius.circular(8)),
            ),
            MyPaddings.standartPadding(
                child: Container(
              width: 56,
              child: Text(title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: MyTextstyles.bodyText2(isLight: true)),
            ))
          ],
        ),
      );
}
