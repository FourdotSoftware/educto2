import 'package:educto2/models/podcast_model.dart';
import 'package:educto2/models/user_model.dart';
import 'package:educto2/widgets/my_drawer.dart';
import 'package:educto2/widgets/navbar.dart';

import '../models/content_model.dart';
import '../models/content_serie_model.dart';
import 'login_page.dart';
import 'podcast_page.dart';
import 'series_page.dart';
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
  ProfilePage({Key? key, required this.user}) : super(key: key);
  UserModel user;

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
              endDrawer: MyDrawer(),
              bottomNavigationBar:Navbar(),
              backgroundColor: MyColors.secondary,
              appBar: appBar(
                  title: MyTexts.autherProfile, key: key, context: context),
              body: SingleChildScrollView(
                child: Stack(alignment: Alignment.topCenter, children: [
                  Container(
                      height: 130,
                      width: 500,
                      child: Image.asset(
                        "assets/images/${widget.user.coverPhoto}",
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
                          widget.user.publisherName ?? "",
                          textAlign: TextAlign.center,
                          style: MyTextstyles.title1(),
                        ),
                        Text(widget.user.publisherMail!,
                            textAlign: TextAlign.center,
                            style: MyTextstyles.bodyText1()),
                        MyPaddings.pagePadding(
                          child: Text(widget.user.bio!,
                              style: MyTextstyles.bodyText1()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            profileInfo(
                                title: "Takipçi",
                                count: widget.user.followerCount),
                            MyPaddings.pagePaddingSymmetric2(
                                child: gradientLine(isRead: false)),
                            profileInfo(
                                title: "Okunma", count: widget.user.readcount),
                            MyPaddings.pagePaddingSymmetric2(
                                child: gradientLine(isRead: false)),
                            profileInfo(
                                title: "İçerik",
                                count: widget.user.contentCount)
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
                        MyPaddings.notificationPadding(
                            child: Container(
                          height: 150,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.user.contentSeries!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return profileContent(
                                    context: context,
                                    page: SeriesPage(
                                      contentSerie: widget.user.contentSeries![index],
                                    ), //TODO
                                    image: widget
                                        .user.contentSeries![index].coverPhoto,
                                    title:
                                        widget.user.contentSeries![index].title,
                                    child: Text(
                                        widget.user.contentSeries![index]
                                            .contents!.length
                                            .toString(),
                                        style: MyTextstyles.title()));
                              }),
                        )),
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
                        Container(
                          height: 180,
                          child: MyPaddings.notificationPadding(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: widget.user.podcastSeries!.length ,
                                itemBuilder: (BuildContext context, int index) {
                                  return profileContent(
                                      context: context,
                                      page: PodcastPage(
                                        playingPodcast:PodcastModel(coverPhoto: "photo1.jpg",
                                        title: MyTexts.contentTitle,
                                        isPlaying: true,
                                        icon:Icons.mic ) ,
                                          podcastSerie: widget.user
                                              .podcastSeries![index]), //TODO
                                      title: widget
                                          .user.podcastSeries![index].title,
                                      image: widget.user.podcastSeries![index]
                                          .coverPhoto,
                                      child: podCastIcon());
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              )));

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
              Container(
                width: 96,
                child: Text(
                  title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: MyTextstyles.bodyText2(isLight: true, isBold: true),
                  textAlign: TextAlign.center,
                ),
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
