import 'package:educto2/main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'home_page.dart';
import 'interest_page.dart';

class ForMePage extends StatefulWidget {
  const ForMePage({Key? key}) : super(key: key);

  @override
  State<ForMePage> createState() => _ForMePageState();
}

class _ForMePageState extends State<ForMePage> {
  var scaffoldKey7 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return forMePage(key: scaffoldKey7);
  }

  Widget forMePage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: drawer(context: context),
        backgroundColor: MyColors.secondary,
        appBar: appBar(title: MyTexts.forMe, key: key, context: context),
        body: MyPaddings.pagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    interestChip(title: "Teknoloji", isLight: true),
                    interestChip(title: "Bilim", isLight: true),
                    interestChip(title: "Müzik", isLight: true),
                    interestChip(title: "Coğrafya", isLight: true),
                    interestChip(title: "Spor", isLight: true)
                  ],
                ),
              ),
              myDvider(),
              Expanded(
                child: ListView(
                  children: [
                    MyPaddings.standartPadding(
                      child: Text(
                        MyTexts.forMeInfo,
                        style: MyTextstyles.info(isMini: true),
                      ),
                    ),
                    contentBar(
                        image: "photo1.jpg",
                        readCount: "1069",
                        context: context,
                        title: MyTexts.contentTitle,
                        shortDesc: MyTexts.contentShort),
                    contentBar(
                        image: "photo1.jpg",
                        context: context,
                        readCount: "785",
                        title: MyTexts.contentTitle2,
                        shortDesc: MyTexts.contentShort),
                    contentBar(
                        image: "photo1.jpg",
                        context: context,
                        readCount: "1069",
                        title: MyTexts.contentTitle,
                        shortDesc: MyTexts.contentShort),
                    contentBar(
                        image: "photo1.jpg",
                        context: context,
                        readCount: "785",
                        title: MyTexts.contentTitle2,
                        shortDesc: MyTexts.contentShort),
                    contentBar(
                        image: "photo1.jpg",
                        context: context,
                        readCount: "1069",
                        title: MyTexts.contentTitle,
                        shortDesc: MyTexts.contentShort),
                    contentBar(
                        image: "photo1.jpg",
                        context: context,
                        readCount: "785",
                        title: MyTexts.contentTitle2,
                        shortDesc: MyTexts.contentShort)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget myDvider() => MyPaddings.standartPadding(
      child: Container(
        height: 4,
        color: MyColors.navbar,
      ),
    );
