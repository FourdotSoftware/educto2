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
  @override
  Widget build(BuildContext context) {
    return contentPage();
  }

  Scaffold contentPage() {
    return Scaffold(
      bottomNavigationBar: navBar(context),
      backgroundColor: MyColors.secondary,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  notifications(),
                  haveNoti(),
                ],
              ),
            )
          ],
          title: Text(""),
          backgroundColor: Colors.transparent,
          //pinned: true,
          expandedHeight: 300,
          flexibleSpace: Container(
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
                MyPaddings.pagePadding(
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
                            Icon(
                              Icons.favorite,
                              color: MyColors.primary,
                            )
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
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
                  MyPaddings.lowPadding(
                      child: SizedBox(child: logo(), height: 14, width: 14)),
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
    );
  }
}

Container gradientLine({bool isRead = true}) => Container(
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
