import 'package:flutter/material.dart';

import '../consts/my_borders.dart';
import '../consts/my_colors.dart';
import '../consts/my_textstyles.dart';
import '../my_state.dart';
class InterestChip extends StatefulWidget {
  const InterestChip({Key? key, required this.id, required this.title,required this.isSelected,  this.isLight=false, this.onPressedd}) : super(key: key);

 final  int id;
      final  String title;
      final  bool isLight;
      final bool isSelected;
   final    void Function()? onPressedd;

  @override
  State<InterestChip> createState() => _InterestChipState();
}

class _InterestChipState extends State<InterestChip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: InkWell (
        onTap:widget.onPressedd,
        child: ElevatedButton(
            onPressed: widget.onPressedd,
            child: Text(widget.title,
                style:
                    MyTextstyles.bodyText1(isLight:widget. isLight ? true :widget. isSelected)),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(78, 33)),
              padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
              backgroundColor: MaterialStateProperty.all(
                widget.isSelected ? MyColors.primary : MyColors.secondary),
              shape: MaterialStateProperty.all(
                  MyBorders.border2(isSelectedd: widget.isSelected, isLight: widget.isLight)),
            )),
      ),
    );
 ;
  }
}