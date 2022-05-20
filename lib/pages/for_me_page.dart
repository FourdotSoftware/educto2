import 'package:educto2/models/interest_model.dart';
import 'package:educto2/pages/content_page.dart';
import 'package:educto2/widgets/my_drawer.dart';

import '../main.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../models/content_model.dart';
import 'home_page.dart';
import 'interest_page.dart';

class ForMePage extends StatefulWidget {
  ForMePage({Key? key}) : super(key: key);
  final List<ContentModel> banaOzelList = [
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 26,
      isLiked: false,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 26,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 26,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 26,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 26,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 26,
      title: "Dijital Çağda Öğretmen Olmak",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 34726,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 7626,
      title: "Okuldaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      isLiked: false,
      viewCount: 34726,
      title: "Sınıftaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    ),
    ContentModel(
      detailPhoto: "photo1.jpg",
      viewCount: 7626,
      isLiked: false,
      title: "Okuldaki Krizi Doğru Yönetme",
      content: MyTexts.loremIpsum,
      coverPhoto: "photo1.jpg",
    )
  ];
  final List<InterestModel> interestList = [
    InterestModel(title: "Teknoloji", isSelected: true),
    InterestModel(title: "fizik", isSelected: false),
    InterestModel(title: "Matematik", isSelected: true),
    InterestModel(title: "Kimya", isSelected: false),
  ];

  @override
  State<ForMePage> createState() => _ForMePageState();
}

class _ForMePageState extends State<ForMePage> {
  var scaffoldKey7 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return forMePage(key: scaffoldKey7);
  }

  Widget forMePage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: MyDrawer(),
        backgroundColor: MyColors.secondary,
        appBar: appBar(title: MyTexts.forMe, key: key, context: context),
        body: MyPaddings.pagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 33,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.interestList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return interestChip(
                          title: widget.interestList[index].title!,
                          isLight: !widget.interestList[index].isSelected!,
                          isSelected: widget.interestList[index].isSelected!);
                    }),
              ),
              myDvider(),
              MyPaddings.standartPadding(
                  child: Text(
                MyTexts.forMeInfo,
                style: MyTextstyles.info(isMini: true),
              )),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.banaOzelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return contentBar(
                          image: widget.banaOzelList[index].coverPhoto,
                          readCount:
                              widget.banaOzelList[index].viewCount.toString(),
                          context: context,
                          page:
                              ContentPage(content: widget.banaOzelList[index]),
                          title: widget.banaOzelList[index].title,
                          shortDesc: widget.banaOzelList[index].content);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget myDvider() => MyPaddings.standartPadding(
      child: Container(
        height: 4,
        color: MyColors.navbar,
      ),
    );
