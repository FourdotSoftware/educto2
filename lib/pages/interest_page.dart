import 'package:educto2/models/interest_model.dart';
import 'package:educto2/my_state.dart';
import 'package:educto2/widgets/interest_chip.dart';

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
List<InterestModel> interestsList=[
InterestModel(id: 1,title: "Teknoloji"),
InterestModel(id: 2,title: "Kimya"),

InterestModel(id: 3,title: "Fizik"),
InterestModel(id: 4,title: "Türkçe"),
InterestModel(id: 5,title: "Matematik"),
InterestModel(id: 6,title: "Din"),
InterestModel(id: 7,title: "Fen"),
InterestModel(id: 7,title: "Biyoloji"),
InterestModel(id: 8,title: "Felsefe"),
InterestModel(id: 9,title: "spor"),
InterestModel(id: 10,title: "Resim"),
InterestModel(id: 11,title: "Sanat")



];

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
                          interestsList.length,
                          (int index) => InterestChip(
                            isSelected: MyState.selectedInterestIDs.contains(interestsList[index].id) ,
                            onPressedd: (){
                              setState(() {
                                MyState.selectedInterestIDs.contains(interestsList[index].id)?
                                MyState.selectedInterestIDs.remove(interestsList[index].id ):
MyState.selectedInterestIDs.add(interestsList[index].id );
                                
                              });
                            },
                            id: interestsList[index].id ,
                             title:interestsList[index].title! )



)),
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


   