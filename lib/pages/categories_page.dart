import 'package:educto2/main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'for_me_page.dart';
import 'home_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

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
          endDrawer: drawer(),
          bottomNavigationBar: navBar(context),
          backgroundColor: MyColors.secondary,
          appBar: appBar(title: MyTexts.categories, key: key),
          body: SingleChildScrollView(
            child: MyPaddings.pagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryButton(
                            title: "Matematik",
                            icon: Icons.add_box,
                            isSelected: true),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                        categoryButton(title: "Matematik", icon: Icons.add_box),
                      ],
                    ),
                  ),
                  myDvider(),
                  contentBar(
                      image: "photo1.jpg",
                      readCount: "1069",
                      title: MyTexts.contentTitle,
                      context: context,
                      shortDesc: MyTexts.contentShort),
                  contentBar(
                      image: "photo1.jpg",
                      readCount: "785",
                      title: MyTexts.contentTitle2,
                      context: context,
                      shortDesc: MyTexts.contentShort),
                  contentBar(
                      image: "photo1.jpg",
                      readCount: "1069",
                      context: context,
                      title: MyTexts.contentTitle,
                      shortDesc: MyTexts.contentShort),
                  contentBar(
                      image: "photo1.jpg",
                      readCount: "785",
                      context: context,
                      title: MyTexts.contentTitle2,
                      shortDesc: MyTexts.contentShort),
                  contentBar(
                      image: "photo1.jpg",
                      readCount: "1069",
                      context: context,
                      title: MyTexts.contentTitle,
                      shortDesc: MyTexts.contentShort),
                ],
              ),
            ),
          )),
    );
  }

  Column categoryButton(
          {String? title, IconData? icon, bool isSelected = false}) =>
      Column(
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
              child: Text(title!, style: MyTextstyles.bodyText2(isLight: true)))
        ],
      );
}
