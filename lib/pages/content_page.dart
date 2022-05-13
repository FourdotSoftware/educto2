import 'package:educto2/main.dart';
import 'package:educto2/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'home_page.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  var scaffoldKey6 = GlobalKey<ScaffoldState>();
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return contentPage(key: scaffoldKey6);
  }

  Widget contentPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: drawer(),
        bottomNavigationBar: navBar(context),
        backgroundColor: MyColors.secondary,
        body: CustomScrollView(slivers: [
          SliverAppBar(
              pinned: true,
              actions: [notificationButton(key: key)],
              title: Text(""),
              backgroundColor: MyColors.secondary,
              //pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                background: Container(
                  height: 300,
                  width: 500,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/photo1.jpg",
                        width: 500,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000), Color(0x00000000)]),
                        ),
                      ),
                    ],
                  ),
                ),
                title: MyPaddings.pagePadding(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyPaddings.lowPadding(
                              child: Icon(
                                Icons.visibility_outlined,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            Text(
                              "1069",
                              style: MyTextstyles.info(isMini: true),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: gradientLine(),
                                ),
                                Text(
                                  MyTexts.contentTitle,
                                  style: MyTextstyles.title3(),
                                ),
                                MyPaddings.pagePaddingSymmetric3(),
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isLiked = !isLiked;
                                });
                              },
                              child: Icon(
                                isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: MyColors.primary,
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              )),
          SliverToBoxAdapter(
            child: MyPaddings.pagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MyTexts.text,
                    style: MyTextstyles.bodyText1(),
                  ),
                  MyPaddings.standartPadding(),
                  Row(children: [
                    MyPaddings.lowPadding(child: logoMini()),
                    Text(
                      MyTexts.publisher,
                      style: MyTextstyles.info(
                        isLight: false,
                      ),
                    )
                  ]),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Container gradientLine({bool isRead = false}) => Container(
      width: 3,
      height: 31,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: isRead
                ? [MyColors.secondary, MyColors.gradientEnd]
                : [MyColors.primary, MyColors.gradientEnd]),
      ),
    );
SizedBox logoMini() => SizedBox(child: logo(), height: 14, width: 14);
