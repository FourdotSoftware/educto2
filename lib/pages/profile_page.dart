import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return profilePage(context);
  }

  Scaffold profilePage(BuildContext context) => Scaffold(
        bottomNavigationBar: navBar(context),
        backgroundColor: MyColors.secondary,
        appBar: appBar(title: MyTexts.autherProfile),
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 130,
                width: 500,
                color: MyColors.primary,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.secondary,
                      radius: 65,
                      child: CircleAvatar(
                          backgroundColor: Colors.white, radius: 58),
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
                    MyPaddings.pagePadding(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyTexts.articles,
                            style: MyTextstyles.title2(),
                          ),
                          Text(
                            MyTexts.seeAll,
                            style: MyTextstyles.info(isMini: true),
                          )
                        ],
                      ),
                    ),
                    MyPaddings.pagePadding(
                      child: Row(
                        children: [
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: Text("12", style: MyTextstyles.title())),
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: Text("12", style: MyTextstyles.title())),
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: Text("8", style: MyTextstyles.title())),
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: Text("12", style: MyTextstyles.title()))
                        ],
                      ),
                    ),
                    MyPaddings.pagePadding(
                      child: Row(
                        children: [
                          Text(
                            MyTexts.podCasts,
                            style: MyTextstyles.title2(),
                          ),
                        ],
                      ),
                    ),
                    MyPaddings.pagePadding(
                      child: Row(
                        children: [
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: podCastIcon()),
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: podCastIcon()),
                          profileContent(
                              title: MyTexts.contentTitle3,
                              child: podCastIcon()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget profileContent({String? title, Widget? child}) =>
      MyPaddings.lowPadding(
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.white,
                  width: 96,
                  height: 96,
                ),
              ),
              Opacity(
                opacity: 0.75,
                child: Container(
                    height: 96,
                    width: 96,
                    decoration: BoxDecoration(
                      color: MyColors.secondary,
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
              child!,
            ]),
            MyPaddings.lowPadding(),
            Text(
              title!,
              style: MyTextstyles.bodyText2(isLight: true, isBold: true),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );

  CircleAvatar podCastIcon() {
    return CircleAvatar(
      child: Icon(
        Icons.mic,
        color: Colors.white,
      ),
      backgroundColor: MyColors.primary,
    );
  }
}
