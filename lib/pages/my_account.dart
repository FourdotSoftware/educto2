import 'package:educto2/main.dart';
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
  @override
  Widget build(BuildContext context) {
    return myAccountPage();
  }

  Scaffold myAccountPage() {
    return Scaffold(
      bottomNavigationBar: navBar(context),
      backgroundColor: MyColors.navbar,
      appBar: appBar(title: MyTexts.myAccount),
      body: SingleChildScrollView(
        child: Column(
          children: [profilField(), menuItems()],
        ),
      ),
    );
  }

  Widget menuItems() {
    return Column(children: [
      menuItem(icon: Icons.mood, title: MyTexts.forMe),
      MyPaddings.spacePadding(),
      menuItem(icon: Icons.favorite_border, title: MyTexts.favoritesTitle),
      MyPaddings.spacePadding(),
      menuItem(icon: Icons.disabled_visible_outlined, title: MyTexts.privacy),
      MyPaddings.spacePadding(),
      menuItem(icon: Icons.settings_outlined, title: MyTexts.settings),
    ]);
  }

  Container menuItem({IconData? icon, String? title}) => Container(
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
      );

  Padding profilField() {
    return Padding(
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
    );
  }
}
