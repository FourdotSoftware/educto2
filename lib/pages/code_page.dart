import 'interest_page.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import 'login_page.dart';

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    return codePage();
  }

  Widget codePage() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.secondary,
        body: MyPaddings.pagePadding(
          child: Stack(
            children: [
              logo(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyPaddings.standartPadding(
                      child: welcomeTitle(data: MyTexts.mailTitle)),
                  MyPaddings.standartPadding(
                      child: welcomeSubTitle(data: MyTexts.mailDesc)),
                  MyPaddings.standartPadding(
                    child: mailField(
                        hintText: "Kodu Giriniz", icon: Icons.key_outlined),
                  ),
                  MyPaddings.standartPadding(
                      child: nextButton(
                          buttonText: MyTexts.nextButton,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InterestPage()));
                          }))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
