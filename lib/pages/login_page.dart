import 'code_page.dart';
import 'content_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_borders.dart';
import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return loginPage();
  }

  Widget loginPage() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.secondary,
        body: MyPaddings.pagePadding(
          child: Stack(
            children: [
              loginField(),
              logo(),
            ],
          ),
        ),
      ),
    );
  }

  Column loginField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyPaddings.standartPadding(child: welcomeTitle(data: MyTexts.welcome)),
        MyPaddings.standartPadding(
            child: welcomeSubTitle(data: MyTexts.welcomeDesc)),
        MyPaddings.standartPadding(
            child: mailField(
                hintText: "Mail Adresiniz", icon: Icons.mail_outline)),
        MyPaddings.standartPadding(
            child: nextButton(
                buttonText: MyTexts.nextButton,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodePage(),
                      ));
                }))
      ],
    );
  }
}

Image logo() => Image.asset(
      "assets/images/logo.png",
      scale: 4,
    );

Text welcomeTitle({String? data}) => Text(data!, style: MyTextstyles.title1());

Text welcomeSubTitle({String? data}) =>
    Text(data!, style: MyTextstyles.bodyText1());

Widget mailField({String? hintText, IconData? icon}) => Container(
      height: 50,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        scrollPadding: EdgeInsets.all(0),
        cursorColor: MyColors.primary,
        style: MyTextstyles.bodyText1(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: MyColors.tertiary),
              gradientLine(isRead: false)
            ],
          ),
          hintText: hintText,
          hintStyle: MyTextstyles.bodyText1(),
          border: MyBorders.border1(),
          enabledBorder: MyBorders.border1(),
          focusedBorder: MyBorders.border1(isfocused: true),
        ),
      ),
    );

Row nextButton({String? buttonText, void Function()? onPressed}) =>
    Row(children: [
      Expanded(
        child: ElevatedButton(
          onPressed: onPressed,
          child:
              Text(buttonText!, style: MyTextstyles.bodyText1(isLight: true)),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(0, 50)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            padding: MaterialStateProperty.all(EdgeInsets.all(0)),
            backgroundColor: MaterialStateProperty.all(MyColors.primary),
          ),
        ),
      ),
    ]);
