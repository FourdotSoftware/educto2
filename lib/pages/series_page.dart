import 'package:educto2/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../main.dart';
import 'content_page.dart';
import 'home_page.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({Key? key}) : super(key: key);

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  var scaffoldKey10 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return seriesPage(context: context, key: scaffoldKey10);
  }

  SafeArea seriesPage({BuildContext? context, GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        // endDrawer: drawer(),
        backgroundColor: MyColors.secondary,
        bottomNavigationBar: navBar(context!),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const Text(""),
              // actions: [notificationButton(scaffoldKey: key)],
              backgroundColor: Colors.transparent,
              expandedHeight: 300,
              flexibleSpace: Container(
                height: 300,
                width: 500,
                child: Stack(
                  children: [
                    Image.asset("assets/images/photo1.jpg",
                        height: 300, width: 500, fit: BoxFit.cover),
                    Container(
                      height: 300,
                      width: 500,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              MyColors.secondary,
                              // MyColors.gradientSecondary
                              MyColors.blackGradientEnd
                            ]),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyPaddings.notificationPadding(
                          child: Row(
                            children: [
                              Text(
                                "MyTexts.articleSerieTitle,",
                                style: MyTextstyles.title2(),
                              ),
                              const Icon(Icons.share, color: Colors.white)
                            ],
                          ),
                        ),
                        MyPaddings.pagePaddingSymmetric(
                          child: Row(
                            children: [
                              const Icon(Icons.account_box,
                                  color: MyColors.tertiary),
                              MyPaddings.lowPadding(
                                  child: Text(
                                "Doç.Dr.Yavuz SAMUR",
                                style: MyTextstyles.bodyText1(),
                              ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: MyPaddings.pagePaddingSymmetric(
                child: Column(
                  children: [
                    MyPaddings.lowPadding(
                      child: Text(
                        MyTexts.welcomeDesc,
                        style: MyTextstyles.bodyText1(),
                      ),
                    ),
                    MyPaddings.standartPadding(),
                    articleField(
                        title: "Oyunlaştırma Nedir?",
                        titleDesc: MyTexts.contentShort,
                        image: "photo1.jpg",
                        no: "1"),
                    articleField(
                        title: "Oyunlaştırma Nedir?",
                        titleDesc: MyTexts.contentShort,
                        image: "photo1.jpg",
                        no: "1"),
                    articleField(
                        title: "Oyunlaştırma Nedir?",
                        titleDesc: MyTexts.contentShort,
                        image: "photo1.jpg",
                        no: "1"),
                    articleField(
                        title: "Oyunlaştırma Nedir?",
                        titleDesc: MyTexts.contentShort,
                        image: "photo1.jpg",
                        no: "1")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget articleField(
    {String? title, String? titleDesc, String? image, String? no}) {
  return MyPaddings.spacePadding(
    child: Row(
      children: [
        // profileContentPhoto(
        //     image: image,
        //     isMini: true,
        //     child: Text(
        //       no!,
        //       style: MyTextstyles.title(),
        //     )),
        MyPaddings.standartPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: MyTextstyles.title2(),
              ),
              Row(
                children: [
                  gradientLine(isRead: false),
                  MyPaddings.lowPadding(),
                  Text(
                    titleDesc!,
                    style: MyTextstyles.bodyText2(),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
