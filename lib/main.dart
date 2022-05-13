import 'package:educto2/consts/my_borders.dart';
import 'package:educto2/consts/my_colors.dart';
import 'package:educto2/consts/my_paddings.dart';
import 'package:educto2/consts/my_texts.dart';
import 'package:educto2/consts/my_textstyles.dart';
import 'package:educto2/pages/code_page.dart';
import 'package:educto2/pages/content_page.dart';
import 'package:educto2/pages/home_page.dart';
import 'package:educto2/pages/interest_page.dart';
import 'package:educto2/pages/last_edit_page.dart';
import 'package:educto2/pages/login_page.dart';
import 'package:educto2/pages/my_favorites_page.dart';
import 'package:educto2/pages/podcast_page.dart';
import 'package:educto2/pages/profile_page.dart';
import 'package:educto2/pages/series_page.dart';
import 'package:flutter/material.dart';

import 'pages/categories_page.dart';
import 'pages/for_me_page.dart';
import 'pages/my_account.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool hasData = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: PodcastPage());
  }
}

Widget drawer() => Drawer(
      backgroundColor: MyColors.navbar,
      child: Column(
        children: [
          MyPaddings.pagePadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MyTexts.notifications,
                  style: MyTextstyles.title2(),
                ),
                Icon(
                  Icons.close,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Column(
            children: [
              notificationFeild(
                day: "04",
                moon: "Ocak",
                title: "gfhjhgfgnjhjfgnhgjhgfhdhg",
              ),
              notificationFeild(
                  day: "03",
                  moon: "Ocak",
                  title: "gfhjhgfgnjhjfgnhgjhgfhdhg",
                  isRead: true),
              notificationFeild(
                day: "03",
                moon: "Ocak",
                title: "gfhjhgfgnjhjfgnhgjhgfhdhg",
                isRead: true,
              ),
              notificationFeild(
                  day: "01",
                  moon: "Ocak",
                  title: "gfhjhgfgnjhjfgnhgjhgfhdhg",
                  isRead: true),
            ],
          ),
        ],
      ),
    );

Widget notificationFeild(
        {String? day, String? moon, String? title, bool isRead = false}) =>
    MyPaddings.notificationPadding(
      child: Row(
        children: [
          Column(children: [
            Text(
              day!,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Text(moon!, style: MyTextstyles.bodyText2(isLight: true)),
          ]),
          MyPaddings.standartPadding(),
          gradientLine(isRead: isRead),
          MyPaddings.lowPadding(),
          Text(
            title!,
            style: MyTextstyles.bodyText1(),
          )
        ],
      ),
    );

Stack navBar(BuildContext context) {
  return Stack(
    children: [
      Container(
          margin: EdgeInsets.only(top: 8),
          color: MyColors.navbar,
          child: Row(
            children: [
              Visibility(
                visible: false,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: navItem(
                    icon: Icons.category_outlined, title: MyTexts.categories),
              ),
            ],
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(
              icon: Icons.category_outlined,
              title: MyTexts.categories,
              contextt: context,
              page: CategoriesPage()),
          navItem(
              icon: Icons.filter_list,
              title: MyTexts.lastEditTitle,
              contextt: context,
              page: LastEditPage()),
          navItem(
              icon: Icons.home_outlined,
              title: MyTexts.homePage,
              isSelected: true,
              contextt: context,
              page: HomePage()),
          navItem(
              icon: Icons.favorite_outline,
              title: MyTexts.favoritesTitle,
              contextt: context,
              page: MyFavoritesPage()),
          navItem(
              icon: Icons.account_circle_outlined,
              title: MyTexts.myAccount,
              contextt: context,
              page: MyAccountPage()),
        ],
      ),
    ],
  );
}

Widget navItem(
        {IconData? icon,
        String? title,
        bool isSelected = false,
        BuildContext? contextt,
        Widget? page}) =>
    InkWell(
      onTap: () {
        Navigator.push(
            contextt!, MaterialPageRoute(builder: (context) => page!));
      },
      child: Stack(
        children: [
          Container(
            //margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isSelected ? MyColors.primary : Colors.transparent),
            child: MyPaddings.navbarPadding(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  Text(
                    title!,
                    style: MyTextstyles.navbar(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
Column profileInfo({String? title, String? count}) => Column(
      children: [
        Text(
          title!,
          style: MyTextstyles.bodyText2(),
        ),
        Text(count!, style: MyTextstyles.title())
      ],
    );
