import '../main.dart';
import 'home_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_borders.dart';
import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import 'login_page.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({Key? key}) : super(key: key);

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  bool button1Selected = false;
  bool button2Selected = false;
  bool button3Selected = false;
  bool button4Selected = false;
  bool button5Selected = false;

  @override
  Widget build(BuildContext context) {
    return interest_page();
  }

  Widget interest_page() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.secondary,
        body: MyPaddings.pagePadding(
          child: Stack(
            children: [
              logo(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyPaddings.standartPadding(
                      child: welcomeTitle(data: MyTexts.interestTitle)),
                  MyPaddings.standartPadding(
                      child: welcomeSubTitle(data: MyTexts.interestDesc)),
                  Wrap(
                      alignment: WrapAlignment.start,
                      children: List.generate(
                          17,
                          (int index) => interestChip(
                              title: "Teknoloji",
                              isSelected: button1Selected,
                              onPressedd: () {
                                setState(() {
                                  button1Selected = !button1Selected;
                                });
                              }))),
                  MyPaddings.standartPadding(
                    child: nextButton(
                        buttonText: MyTexts.interestButton,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                              (route) => false);
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget interestChip(
        {bool isSelected = false,
        String title = "boş",
        bool isLight = false,
        void Function()? onPressedd}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: ElevatedButton(
          onPressed: onPressedd,
          child: Text(title,
              style:
                  MyTextstyles.bodyText1(isLight: isLight ? true : isSelected)),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(78, 33)),
            padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
            backgroundColor: MaterialStateProperty.all(
                isSelected ? MyColors.primary : MyColors.secondary),
            shape: MaterialStateProperty.all(
                MyBorders.border2(isSelectedd: isSelected, isLight: isLight)),
          )),
    );
