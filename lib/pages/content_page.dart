import 'package:educto2/models/content_model.dart';
import 'package:educto2/widgets/my_drawer.dart';
import 'package:educto2/widgets/navbar.dart';

import '../main.dart';
import 'login_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'home_page.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({
    Key? key,
    required this.content,
  }) : super(key: key);
  final ContentModel content;

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  var scaffoldKey6 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return contentPage(key: scaffoldKey6);
  }

  Widget contentPage({GlobalKey<ScaffoldState>? key}) {
    return SafeArea(
      child: Scaffold(
        key: key,
        endDrawer: MyDrawer(),
        bottomNavigationBar: Navbar(),
        backgroundColor: MyColors.secondary,
        body: CustomScrollView(slivers: [
          SliverAppBar(
              leading: backButton(context: context),
              pinned: true,
              actions: [notificationButton(key: key)],
              title: const Text(""),
              backgroundColor: MyColors.secondary,
              //pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                background: SizedBox(
                  height: 300,
                  width: 500,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/${widget.content.detailPhoto}",
                        width: 500,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 300,
                        width: 500,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000), Color(0x00000000)]),
                        ),
                      ),
                    ],
                  ),
                ),
                title: MyPaddings.pagePadding(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                            Text(
                              widget.content.viewCount.toString(),
                              style: MyTextstyles.info(isMini: true),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: gradientLine(),
                                ),
                                Text(
                                  widget.content.title!,
                                  style: MyTextstyles.title3(),
                                ),
                                MyPaddings.pagePaddingSymmetric3(),
                                const Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  widget.content.isLiked !=
                                      !widget.content.isLiked!;
                                });
                              },
                              child: Icon(
                                widget.content.isLiked!
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: MyColors.primary,
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              )),
          SliverToBoxAdapter(
            child: MyPaddings.pagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.content.content!,
                    style: MyTextstyles.bodyText1(),
                  ),
                  MyPaddings.standartPadding(),
                  Row(children: [
                    MyPaddings.lowPadding(child: logoMini()),
                    Text(
                      widget.content.publisherName ?? "fxc",
                      style: MyTextstyles.info(
                        isLight: false,
                      ),
                    )
                  ]),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Container gradientLine({bool isRead = false}) => Container(
      width: 3,
      height: 31,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: isRead
                ? [MyColors.secondary, MyColors.gradientEnd]
                : [MyColors.primary, MyColors.gradientEnd]),
      ),
    );
SizedBox logoMini() => SizedBox(child: logo(), height: 14, width: 14);

Widget backButton({required BuildContext? context, bool isShow = true}) {
  return isShow
      ? InkWell(
          onTap: () {
            Navigator.pop(context!);
          },
          child: const Icon(Icons.arrow_back_ios))
      : Container();
}
