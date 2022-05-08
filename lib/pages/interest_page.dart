import 'package:educto2/main.dart';
import 'package:educto2/pages/home_page.dart';
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

  Scaffold interest_page() {
    return Scaffold(
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
                MyPaddings.pagePadding(
                    child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    interestChip(
                        title: "Teknoloji",
                        isSelected: button1Selected,
                        onPressedd: () {
                          setState(() {
                            button1Selected = !button1Selected;
                          });
                        }),
                    interestChip(
                        title: "Bilim",
                        isSelected: button2Selected,
                        onPressedd: () {
                          setState(() {
                            button2Selected = !button2Selected;
                          });
                        }),
                    interestChip(
                        title: "Müzik",
                        isSelected: button3Selected,
                        onPressedd: () {
                          setState(() {
                            button3Selected = !button3Selected;
                          });
                        }),
                    interestChip(
                        title: "Coğrafya",
                        isSelected: button4Selected,
                        onPressedd: () {
                          setState(() {
                            button4Selected = !button4Selected;
                          });
                        }),
                    interestChip(
                        title: "Spor",
                        isSelected: button5Selected,
                        onPressedd: () {
                          setState(() {
                            button5Selected = !button5Selected;
                          });
                        }),
                    interestChip(title: "Matematik"),
                    interestChip(title: "Türkçe"),
                    interestChip(title: "Resim"),
                    interestChip(title: "Teknoloji"),
                    interestChip(title: "Bilim"),
                    interestChip(title: "Müzik"),
                    interestChip(title: "Coğrafya"),
                    interestChip(title: "Spor"),
                    interestChip(title: "Matematik"),
                    interestChip(title: "Türkçe"),
                    interestChip(title: "Resim"),
                    interestChip(title: "Teknoloji"),
                  ],
                )),
                MyPaddings.standartPadding(
                  child: nextButton(
                      buttonText: MyTexts.interestButton,
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                      }),
                ),
              ],
            ),
          ],
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
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
          onPressed: onPressedd,
          child: Text(title,
              style:
                  MyTextstyles.bodyText1(isLight: isLight ? true : isSelected)),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(18.0)),
            backgroundColor: MaterialStateProperty.all(
                isSelected ? MyColors.primary : MyColors.secondary),
            shape: MaterialStateProperty.all(
                MyBorders.border2(isSelectedd: isSelected, isLight: isLight)),
          )),
    );
