import 'package:educto2/models/content_model.dart';
import 'package:educto2/models/content_serie_model.dart';
import 'package:educto2/widgets/my_drawer.dart';
import 'package:educto2/widgets/navbar.dart';

import 'profile_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../main.dart';
import 'content_page.dart';
import 'home_page.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({Key? key, required this.contentSerie}) : super(key: key);
  final ContentSerieModel contentSerie;

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
        endDrawer: MyDrawer(),
        backgroundColor: MyColors.secondary,
        bottomNavigationBar: Navbar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                leading: backButton(context: context),
                automaticallyImplyLeading: true,
                title: const Text(""),
                actions: [notificationButton(key: key)],
                backgroundColor: Colors.transparent,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.all(0),
                  expandedTitleScale: 1,
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyPaddings.notificationPadding(
                        child: Row(
                          children: [
                            Text(
                              widget.contentSerie.title!,
                              style: MyTextstyles.title2(),
                            ),
                            MyPaddings.pagePaddingSymmetric4(
                                child: Icon(Icons.share, color: Colors.white))
                          ],
                        ),
                      ),
                      MyPaddings.pagePaddingSymmetric(
                        child: Row(
                          children: [
                            Icon(widget.contentSerie.publisherIcon,
                                color: MyColors.tertiary),
                            MyPaddings.lowPadding(
                                child: Text(
                              widget.contentSerie.publisherName!,
                              style: MyTextstyles.bodyText1(),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                  background: Container(
                    height: 300,
                    width: 500,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/${widget.contentSerie.coverPhoto} ",
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
                                  MyColors.gradientSecondary
                                  // MyColors.blackGradientEnd
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
                    MyPaddings.lowPadding(
                      child: Text(
                        widget.contentSerie.desc!,
                        style: MyTextstyles.bodyText1(),
                      ),
                    ),
                    MyPaddings.standartPadding(),
                    Expanded(
                      child: ListView.builder(
                          itemCount: widget.contentSerie.contents!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return articleField(
                                context: context,
                                page: ContentPage(
                                    content: widget.contentSerie.contents![index]),
                                title: widget.contentSerie.contents![index].title,
                                titleDesc: widget.contentSerie.contents![index].content,
                                image: widget.contentSerie.contents![index].coverPhoto,
                                no: (index + 1).toString());
                          }),
                    )
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
    {String? title,
    String? titleDesc,
    String? image,
    String? no,
    BuildContext? context,
    Widget? page}) {
  return InkWell(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) => page!));
    },
    child: MyPaddings.spacePadding(
      child: Row(
        children: [
          profileContentPhoto(
              image: image,
              isMini: true,
              child: Text(
                no!,
                style: MyTextstyles.title(),
              )),
          MyPaddings.standartPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: MyTextstyles.title3(),
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
    ),
  );
}
