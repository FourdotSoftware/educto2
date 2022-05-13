import 'package:educto2/pages/login_page.dart';
import 'package:educto2/pages/podcast_page.dart';
import 'package:educto2/pages/series_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../main.dart';
import 'content_page.dart';
import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var scaffoldKey8 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return profilePage(context: context, key: scaffoldKey8);
  }

  Widget profilePage({BuildContext? context, GlobalKey<ScaffoldState>? key}) =>
      SafeArea(
        child: Scaffold(
          key: key,
          endDrawer: drawer(),
          bottomNavigationBar: navBar(context!),
          backgroundColor: MyColors.secondary,
          appBar:
              appBar(title: MyTexts.autherProfile, key: key, context: context),
          body: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                    height: 130,
                    width: 500,
                    child: Image.asset(
                      "assets/images/photo1.jpg",
                      height: 500,
                      width: 130,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: MyColors.secondary,
                        radius: 65,
                        child: CircleAvatar(
                            child: logo(),
                            backgroundColor: MyColors.navbar,
                            radius: 58),
                      ),
                      Text(
                        MyTexts.name,
                        textAlign: TextAlign.center,
                        style: MyTextstyles.title1(),
                      ),
                      Text(MyTexts.mail,
                          textAlign: TextAlign.center,
                          style: MyTextstyles.bodyText1()),
                      MyPaddings.pagePadding(
                        child: Text(MyTexts.loremIpsum,
                            style: MyTextstyles.bodyText1()),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          profileInfo(title: "Takipçi", count: "129"),
                          MyPaddings.pagePaddingSymmetric2(
                              child: gradientLine(isRead: false)),
                          profileInfo(title: "Okunma", count: "1259"),
                          MyPaddings.pagePaddingSymmetric2(
                              child: gradientLine(isRead: false)),
                          profileInfo(title: "İçerik", count: "34")
                        ],
                      ),
                      MyPaddings.pagePaddingSymmetric(
                        child: Row(
                          children: [
                            Text(
                              MyTexts.articles,
                              style: MyTextstyles.title2(),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: MyPaddings.notificationPadding(
                          child: Row(
                            children: [
                              profileContent(
                                  context: context,
                                  page: SeriesPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child:
                                      Text("12", style: MyTextstyles.title())),
                              profileContent(
                                  context: context,
                                  page: SeriesPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child:
                                      Text("12", style: MyTextstyles.title())),
                              profileContent(
                                  context: context,
                                  page: SeriesPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child:
                                      Text("8", style: MyTextstyles.title())),
                              profileContent(
                                  context: context,
                                  page: SeriesPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child:
                                      Text("12", style: MyTextstyles.title()))
                            ],
                          ),
                        ),
                      ),
                      MyPaddings.pagePaddingSymmetric(
                        child: Row(
                          children: [
                            Text(
                              MyTexts.podCasts,
                              style: MyTextstyles.title2(),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: MyPaddings.notificationPadding(
                          child: Row(
                            children: [
                              profileContent(
                                  context: context,
                                  page: PodcastPage(),
                                  title: MyTexts.contentTitle3,
                                  image: "photo1.jpg",
                                  child: podCastIcon()),
                              profileContent(
                                  context: context,
                                  page: PodcastPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child: podCastIcon()),
                              profileContent(
                                  context: context,
                                  page: PodcastPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child: podCastIcon()),
                              profileContent(
                                  context: context,
                                  page: PodcastPage(),
                                  image: "photo1.jpg",
                                  title: MyTexts.contentTitle3,
                                  child: podCastIcon())
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget profileContent(
          {String? title,
          Widget? child,
          String? image,
          bool isMini = false,
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
              profileContentPhoto(image: image, isMini: isMini, child: child),
              MyPaddings.lowPadding(),
              Text(
                title!,
                style: MyTextstyles.bodyText2(isLight: true, isBold: true),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
}

Stack profileContentPhoto({String? image, bool isMini = false, Widget? child}) {
  return Stack(alignment: Alignment.center, children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        child: Image.asset(
          "assets/images/$image",
          fit: BoxFit.cover,
        ),
        width: isMini ? 65 : 96,
        height: isMini ? 65 : 96,
      ),
    ),
    Opacity(
      opacity: 0.75,
      child: Container(
          height: isMini ? 65 : 96,
          width: isMini ? 65 : 96,
          decoration: BoxDecoration(
            color: MyColors.secondary,
            borderRadius: BorderRadius.circular(8),
          )),
    ),
    child!,
  ]);
}

CircleAvatar podCastIcon() {
  return CircleAvatar(
    child: Icon(
      Icons.mic,
      color: Colors.white,
    ),
    backgroundColor: MyColors.primary,
  );
}
