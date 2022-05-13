import 'package:educto2/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../main.dart';
import 'content_page.dart';
import 'home_page.dart';

class PodcastPage extends StatefulWidget {
  const PodcastPage({Key? key}) : super(key: key);

  @override
  State<PodcastPage> createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  var scaffoldKey9 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return podcastPage(context: context, key: scaffoldKey9);
  }

  SafeArea podcastPage({BuildContext? context, GlobalKey<ScaffoldState>? key}) {
    var gradientSecondary;
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: drawer(),
        backgroundColor: MyColors.secondary,
        bottomNavigationBar: navBar(context!),
        body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                    leading: backButton(context: context),
                    collapsedHeight: 68,
                    elevation: 0,
                    pinned: true,
                    title: const Text(""),
                    actions: [notificationButton(key: key)],
                    backgroundColor: MyColors.secondary,
                    expandedHeight: 300,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyPaddings.pagePaddingSymmetric(
                            child: Row(
                              children: [
                                Text(
                                  MyTexts.articleSerieTitle2,
                                  style: MyTextstyles.title2(),
                                ),
                                MyPaddings.lowPadding(
                                    child: const Icon(Icons.share,
                                        color: Colors.white))
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
                                  "Prof.Dr.Osman SAMANCI",
                                  style: MyTextstyles.bodyText1(),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      expandedTitleScale: 1,
                      background: Container(
                        height: 300,
                        width: 500,
                        child: Stack(
                          children: [
                            Image.asset("assets/images/photo1.jpg",
                                height: 300, width: 500, fit: BoxFit.cover),
                            Container(
                              height: 300,
                              width: 500,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      MyColors.secondary,
                                      MyColors.gradientSecondary
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                SliverFillRemaining(
                  child: MyPaddings.pagePaddingSymmetric(
                    child: Column(
                      children: [
                        podcastDesc(),
                        podcastContent(
                            image: "photo1.jpg",
                            title1: MyTexts.articleSerieTitle4,
                            title2: "Ahtapot Yayımcı Anlatıyor",
                            isPlaying: true,
                            time: "23:12",
                            value: 0),
                        podcastContent(
                            image: "photo1.jpg",
                            title1: "Okul ve Öğretmen",
                            title2: "Ahtapot Yayımcı Anlatıyor",
                            isPlaying: false,
                            time: "23:12",
                            value: 0),
                        podcastContent(
                            image: "photo1.jpg",
                            title1: "Öğrenci ve Öğretmen",
                            title2: "Ahtapot Yayımcı Anlatıyor",
                            isPlaying: false,
                            time: "23:12",
                            value: 0)
                      ],
                    ),
                  ),
                )
              ],
            ),
            MyPaddings.notificationPadding(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: MyColors.navbar,
                    borderRadius: BorderRadius.circular(8)),
                //stmetric4
                child: MyPaddings.pagePaddingSymmetric4(
                  child: Row(
                    children: [
                      profileContentPhoto(
                          image: "photo1.jpg",
                          isMini: true,
                          child: podCastIcon()),
                      contentColumn(
                          title1: MyTexts.articleSerieTitle3,
                          title2: "Ahtapot Yayımcı Anlatıyor",
                          isPlaying: true,
                          time: "23:12",
                          value: 0)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding podcastDesc() {
    return MyPaddings.lowPadding(
      child: Text(
        MyTexts.welcomeDesc,
        style: MyTextstyles.bodyText1(),
      ),
    );
  }

  Widget podcastContent(
          {String? image,
          String? title1,
          String? title2,
          isPlaying = false,
          String? time,
          double? value}) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyPaddings.standartPadding(
            child: profileContentPhoto(
                image: image!, isMini: true, child: podCastIcon()),
          ),
          contentColumn(
              title1: title1,
              title2: title2,
              isPlaying: isPlaying,
              time: time,
              value: value),
        ],
      );

  Widget contentColumn(
          {String? title1,
          String? title2,
          isPlaying = false,
          String? time,
          double? value}) =>
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyPaddings.lowPadding(),
            MyPaddings.lowPadding(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title1!,
                    style: MyTextstyles.title3(),
                  ),
                  Icon(
                    isPlaying ? Icons.pause_circle : Icons.play_circle,
                    color: MyColors.primary,
                  ),
                ],
              ),
            ),
            MyPaddings.pagePaddingSymmetric4(
              child: Row(
                children: [
                  logoMini(),
                  MyPaddings.pagePaddingSymmetric3(
                    child: Text(
                      title2!,
                      style: MyTextstyles.info(isMini: true, isLight: false),
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SliderTheme(
                    data: SliderThemeData(
                        trackHeight: 3,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 6)),
                    child: Container(
                      height: 18,
                      //color: MyColors.primary,
                      //alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 4),
                      child: Slider(
                        value: value!,
                        onChanged: (range) {},
                        activeColor: MyColors.primary,
                        inactiveColor: MyColors.tertiary,
                      ),
                    ),
                  ),
                ),
                Text(
                  time!,
                  style: MyTextstyles.bodyText2(),
                )
              ],
            )
          ],
        ),
      );
}
