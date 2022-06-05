import 'package:educto2/widgets/my_drawer.dart';

import '../main.dart';
import '../models/content_model.dart';
import '../models/content_model.dart';
import '../models/content_model.dart';
import '../widgets/navbar.dart';
import 'content_page.dart';
import 'last_edit_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final List<ContentModel> sonEklenenList = [
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      title: "Evdeki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
      isLiked: true,
    ),
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 34726,
        title: "Sınıftaki Krizi Doğru Yönetme",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false),
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 7626,
        title: "Okuldaki Krizi Doğru Yönetme",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false)
  ];

  final List<ContentModel> enCokOkunanlarList = [
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 26,
        title: "Dijital Çağda Öğretmen Olmak",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false),
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 34726,
        title: "Sınıftaki Krizi Doğru Yönetme",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false),
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 7626,
        title: "Okuldaki Krizi Doğru Yönetme",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false),
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 34726,
        title: "Sınıftaki Krizi Doğru Yönetme",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false),
    ContentModel(
        detailPhoto: "photo1.jpg",
        viewCount: 7626,
        title: "Okuldaki Krizi Doğru Yönetme",
        content: MyTexts.loremIpsum,
        coverPhoto: "photo1.jpg",
        isLiked: false)
  ];

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
          endDrawer: MyDrawer(),
          bottomNavigationBar: Navbar(),
          backgroundColor: MyColors.secondary,
          appBar: appBar(
              isShowBackButton: false,
              title: MyTexts.appName,
              isSlogan: true,
              key: key,
              context: context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                slider(),
                lastAdded(context: context, page: LastEditPage()),
                MyPaddings.pagePaddingSymmetric(
                  child: Column(
                      children: List.generate(
                          widget.sonEklenenList.length,
                          (index) => contentBar(
                              image: widget.sonEklenenList[index].coverPhoto,
                              readCount: widget.sonEklenenList[index].viewCount
                                  .toString(),
                              title: widget.sonEklenenList[index].title,
                              shortDesc: widget.sonEklenenList[index].content,
                              context: context,
                              page: ContentPage(
                                  content: widget.sonEklenenList[index])))),
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
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.enCokOkunanlarList.length,
                      itemBuilder: (BuildContext context, int index) =>
                          mostReadField(
                              title: widget.enCokOkunanlarList[index].title,
                              image:
                                  widget.enCokOkunanlarList[index].coverPhoto,
                              readCount: widget
                                  .enCokOkunanlarList[index].viewCount
                                  .toString(),
                              context: context,
                              page: ContentPage(
                                content: widget.enCokOkunanlarList[index],
                              )),
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
        BuildContext? context,
        Color color = MyColors.secondary,
        GlobalKey<ScaffoldState>? key,
        bool isShowBackButton = true}) =>
    AppBar(
      leading: backButton(context: context, isShow: isShowBackButton),
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
Widget contentBar({
  String? image,
  String? readCount,
  String? title,
  String? shortDesc,
  BuildContext? context,
  Widget? page,
}) =>
    InkWell(
      onTap: () {
        Navigator.push(
            context!, MaterialPageRoute(builder: (context) => page!));
      },
      child: MyPaddings.lowPadding(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            contentImageFeild(image: image, readCount: readCount, isMini: true),
            Expanded(
              child: Column(
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
                      Expanded(
                        child: Text(
                          shortDesc!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyTextstyles.bodyText2(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
            Container(
              width: 95,
              child: Text(
                title!,
                style: MyTextstyles.bodyText2(isLight: true, isBold: true),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
