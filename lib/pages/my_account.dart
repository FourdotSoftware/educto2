import 'package:educto2/main.dart';
import 'package:educto2/pages/for_me_page.dart';
import 'package:educto2/pages/my_favorites_page.dart';
import 'package:educto2/pages/profile_page.dart';
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
        endDrawer: drawer(),
        bottomNavigationBar: navBar(context),
        backgroundColor: MyColors.navbar,
        appBar: appBar(title: MyTexts.myAccount, key: key, context: context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              profilField(context: context, page: ProfilePage(context)),
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
