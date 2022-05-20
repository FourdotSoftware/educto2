import 'package:educto2/models/notification.dart';
import 'package:educto2/pages/for_me_page.dart';
import 'package:educto2/pages/interest_page.dart';
import 'package:educto2/pages/podcast_page.dart';
import 'package:educto2/pages/profile_page.dart';
import 'package:educto2/pages/series_page.dart';
import 'package:flutter/material.dart';

import 'consts/my_colors.dart';
import 'consts/my_paddings.dart';
import 'consts/my_texts.dart';
import 'consts/my_textstyles.dart';
import 'pages/categories_page.dart';
import 'pages/content_page.dart';
import 'pages/home_page.dart';
import 'pages/last_edit_page.dart';
import 'pages/login_page.dart';
import 'pages/my_account.dart';
import 'pages/my_favorites_page.dart';

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
        debugShowCheckedModeBanner: false, title: 'Educto', home: LoginPage());
  }
}

Stack navBar(BuildContext context) {
  return Stack(
    children: [
      Container(
          margin: const EdgeInsets.only(top: 8),
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
              page: const MyAccountPage()),
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
