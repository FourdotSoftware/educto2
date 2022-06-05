import 'package:educto2/models/podcast_model.dart';
import 'package:educto2/models/podcast_serie_model.dart';
import 'package:educto2/models/user_model.dart';
import 'package:educto2/widgets/my_drawer.dart';
import 'package:educto2/widgets/navbar.dart';

import '../main.dart';
import '../models/content_model.dart';
import '../models/content_serie_model.dart';
import 'for_me_page.dart';
import 'my_favorites_page.dart';
import 'profile_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'home_page.dart';
import 'login_page.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  var scaffoldKey5 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return myAccountPage(key: scaffoldKey5);
  }

  Widget myAccountPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: MyDrawer(),
        bottomNavigationBar: Navbar(),
        backgroundColor: MyColors.navbar,
        appBar: appBar(title: MyTexts.myAccount, key: key, context: context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              profilField(
                  context: context,
                  page: ProfilePage(
                      user: UserModel(
                          coverPhoto: "photo1.jpg",
                          profilePhoto: "logo.png",
                          publisherName: "Sedat AKKUŞ",
                          publisherMail: "furkan@fourdor.net",
                          bio: MyTexts.loremIpsum,
                          followerCount: "43443",
                          contentCount: "2346",
                          readcount: "8765",
                          podcastSeries: [
                        PodcastSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.loremIpsum,
                            podcasts: [
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: false),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                            ]),
                        PodcastSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.loremIpsum,
                            podcasts: [
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: false),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                            ]),
                        PodcastSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.loremIpsum,
                            podcasts: [
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: false),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                            ]),
                        PodcastSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.loremIpsum,
                            podcasts: [
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: false),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                            ]),
                        PodcastSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.loremIpsum,
                            podcasts: [
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: false),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                              PodcastModel(
                                  coverPhoto: "photo1.jpg",
                                  title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                                  publisherIcon: Icons.account_box,
                                  publisherName: "Doç.Dr.Yavuz SAMUR",
                                  icon: Icons.abc_outlined,
                                  isPlaying: true),
                            ]),
                      ],
                          contentSeries: [
                        ContentSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.welcomeDesc,
                            contents: [
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                            ]),
                        ContentSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.welcomeDesc,
                            contents: [
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                            ]),
                        ContentSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.welcomeDesc,
                            contents: [
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                            ]),
                        ContentSerieModel(
                            coverPhoto: "photo1.jpg",
                            title: "Eğitimde Oyunlaştırma Yazı Dizisi",
                            publisherIcon: Icons.account_box,
                            publisherName: "Doç.Dr.Yavuz SAMUR",
                            desc: MyTexts.welcomeDesc,
                            contents: [
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                              ContentModel(
                                  detailPhoto: "photo1.jpg",
                                  viewCount: 26,
                                  isLiked: false,
                                  publisherName: "Sedat AKKUŞ",
                                  publisherIcon: "AA",
                                  title: "Oyunlaştırma Nedir?",
                                  content: MyTexts.contentShort,
                                  coverPhoto: "photo1.jpg"),
                            ]),
                      ]))),
              menuItems()
            ], 
          ),
        ),
      ),
    );
  }

  Widget menuItems() {
    return Column(children: [
      menuItem(
          icon: Icons.mood,
          title: MyTexts.forMe,
          context: context,
          page: ForMePage()),
      MyPaddings.spacePadding(),
      menuItem(
          icon: Icons.favorite_border,
          title: MyTexts.favoritesTitle,
          context: context,
          page: MyFavoritesPage()),
      MyPaddings.spacePadding(),
      menuItem(
          icon: Icons.disabled_visible_outlined,
          title: MyTexts.privacy,
          context: context),
      MyPaddings.spacePadding(),
      menuItem(
          icon: Icons.settings_outlined,
          title: MyTexts.settings,
          context: context),
    ]);
  }

  Widget menuItem(
          {IconData? icon,
          String? title,
          BuildContext? context,
          Widget? page}) =>
      InkWell(
        onTap: () {
          Navigator.push(
              context!, MaterialPageRoute(builder: (context) => page!));
        },
        child: Container(
          color: MyColors.secondary,
          child: MyPaddings.pagePadding(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  MyPaddings.standartPadding(
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                    thickness: 0.5,
                    // width: 10,
                  ),
                  MyPaddings.standartPadding(
                    child: Text(
                      title!,
                      style: MyTextstyles.title3(isBold: false),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  Widget profilField({BuildContext? context, Widget? page}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context!, MaterialPageRoute(builder: (context) => page!));
      },
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: MyColors.secondary,
                  child: CircleAvatar(
                    radius: 53,
                    backgroundColor: MyColors.navbar,
                    child: logo(),
                  ),
                ),
                Text(
                  MyTexts.myName,
                  style: MyTextstyles.title1(),
                ),
                Text(
                  MyTexts.myMail,
                  style: MyTextstyles.bodyText1(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
