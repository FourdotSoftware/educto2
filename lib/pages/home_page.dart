import 'package:educto2/main.dart';
import 'package:educto2/pages/content_page.dart';
import 'package:educto2/pages/last_edit_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey1 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return homePage(key: scaffoldKey1);
  }

  Widget homePage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
          key: key,
          endDrawer: drawer(),
          bottomNavigationBar: navBar(context),
          backgroundColor: MyColors.secondary,
          appBar:
              appBar(title: MyTexts.appName, isSlogan: true, key: scaffoldKey1),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                slider(),
                lastAdded(context: context, page: const LastEditPage()),
                MyPaddings.pagePaddingSymmetric(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      contentBar(
                          image: "photo1.jpg",
                          readCount: "1069",
                          title: MyTexts.contentTitle,
                          shortDesc: MyTexts.contentShort,
                          context: context,
                          page: const ContentPage()),
                      contentBar(
                          image: "photo1.jpg",
                          readCount: "785",
                          title: MyTexts.contentTitle2,
                          shortDesc: MyTexts.contentShort,
                          context: context,
                          page: const ContentPage()),
                      contentBar(
                          image: "photo1.jpg",
                          readCount: "1069",
                          title: MyTexts.contentTitle,
                          shortDesc: MyTexts.contentShort,
                          context: context,
                          page: const ContentPage()),
                      contentBar(
                          image: "photo1.jpg",
                          readCount: "785",
                          title: MyTexts.contentTitle2,
                          shortDesc: MyTexts.contentShort,
                          context: context,
                          page: const ContentPage())
                    ],
                  ),
                ),
                MyPaddings.pagePadding(
                  child: Text(
                    MyTexts.mostRead,
                    style: MyTextstyles.title2(),
                  ),
                ),
                MyPaddings.pagePaddingSymmetric(
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        mostReadField(
                            title: MyTexts.contentTitle3,
                            image: "photo1.jpg",
                            readCount: "5612",
                            context: context,
                            page: const ContentPage()),
                        mostReadField(
                            title: MyTexts.contentTitle4,
                            image: "photo1.jpg",
                            readCount: "4312",
                            context: context,
                            page: const ContentPage()),
                        mostReadField(
                            title: MyTexts.contentTitle5,
                            image: "photo1.jpg",
                            readCount: "4172",
                            context: context,
                            page: const ContentPage()),
                        mostReadField(
                            title: MyTexts.contentTitle6,
                            image: "photo1.jpg",
                            readCount: "3291",
                            context: context,
                            page: const ContentPage()),
                        mostReadField(
                            title: MyTexts.contentTitle5,
                            image: "photo1.jpg",
                            readCount: "4172",
                            context: context,
                            page: const ContentPage()),
                        mostReadField(
                            title: MyTexts.contentTitle6,
                            image: "photo1.jpg",
                            readCount: "3291",
                            context: context,
                            page: const ContentPage()),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Container slider() {
    return Container(
      color: MyColors.primary,
      child: MyPaddings.pagePaddingSymmetric(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyPaddings.standartPadding(
                child: Text(MyTexts.sliderTitle, style: MyTextstyles.title2())),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyPaddings.standartPadding(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/photo1.jpg",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyPaddings.standartPadding(
                      child: Text(
                        MyTexts.sliderTitle2,
                        style: MyTextstyles.title3(),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 4,
                          height: 120,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  MyColors.secondary,
                                  MyColors.gradientCenter,
                                  MyColors.gradientEnd
                                ]),
                          ),
                        ),
                        MyPaddings.standartPadding(
                          child: SizedBox(
                            width: 150,
                            child: Text(
                              MyTexts.welcomeDesc,
                              style: MyTextstyles.bodyText2(isLight: true),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget lastAdded({BuildContext? context, Widget? page}) =>
      MyPaddings.pagePadding(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              MyTexts.lastAdded,
              style: MyTextstyles.title2(),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context!, MaterialPageRoute(builder: (context) => page!));
              },
              child: Text(
                MyTexts.seeAll,
                style: MyTextstyles.info(isMini: true),
              ),
            )
          ],
        ),
      );
}

AppBar appBar(
        {String? title,
        bool isSlogan = false,
        Color color = MyColors.secondary,
        GlobalKey<ScaffoldState>? key}) =>
    AppBar(
      elevation: 0,
      backgroundColor: color,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: MyTextstyles.title1(),
              ),
              isSlogan
                  ? Text(MyTexts.slogan,
                      style: MyTextstyles.info(isLight: false))
                  : Container(),
            ],
          ),
        ],
      ),
      actions: [notificationButton(key: key)],
    );

Widget notificationButton({GlobalKey<ScaffoldState>? key}) {
  return InkWell(
    onTap: () {
      key!.currentState!.openEndDrawer();
    },
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          notifications(),
          haveNoti(),
        ],
      ),
    ),
  );
}

Icon notifications() => const Icon(Icons.notifications_outlined);

Icon haveNoti() =>
    const Icon(Icons.fiber_manual_record, color: (MyColors.primary), size: 12);
Widget contentBar(
        {String? image,
        String? readCount,
        String? title,
        String? shortDesc,
        BuildContext? context,
        Widget? page = const ContentPage()}) =>
    InkWell(
      onTap: () {
        Navigator.push(
            context!, MaterialPageRoute(builder: (context) => page!));
      },
      child: MyPaddings.lowPadding(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            contentImageFeild(image: image, readCount: readCount, isMini: true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyPaddings.lowPadding(
                    child: Text(title!, style: MyTextstyles.title3())),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        width: 3,
                        height: 31,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                              MyColors.primary,
                              MyColors.gradientEnd
                            ])),
                      ),
                    ),
                    Text(
                      shortDesc!,
                      style: MyTextstyles.bodyText2(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
Widget contentImageFeild(
        {String? image, String? readCount, bool isMini = false}) =>
    Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/$image",
            width: isMini ? 65 : 96,
            height: isMini ? 65 : 96,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: isMini ? 65 : 96,
          width: isMini ? 65 : 96,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [const Color(0xff000000), const Color(0x00000000)]),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyPaddings.lowPadding(
              child: const Icon(
                Icons.visibility_outlined,
                color: Colors.white,
                size: 12,
              ),
            ),
            MyPaddings.lowPadding(
              child: Text(
                readCount!,
                style: MyTextstyles.info(isMini: true),
              ),
            ),
          ],
        ),
      ],
    );
Widget mostReadField(
        {String? title,
        String? image,
        String? readCount,
        BuildContext? context,
        Widget? page}) =>
    InkWell(
      onTap: () {
        Navigator.push(
            context!, MaterialPageRoute(builder: (context) => page!));
      },
      child: MyPaddings.lowPadding(
        child: Column(
          children: [
            contentImageFeild(
                image: image!, readCount: readCount!, isMini: false),
            Text(
              title!,
              style: MyTextstyles.bodyText2(isLight: true, isBold: true),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
