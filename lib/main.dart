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





Column profileInfo({String? title, String? count}) => Column(
      children: [
        Text(
          title!,
          style: MyTextstyles.bodyText2(),
        ),
        Text(count!, style: MyTextstyles.title())
      ],
    );
