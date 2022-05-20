import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../models/notification.dart';
import '../pages/content_page.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  final List<NotificationModel> notificationList = [
    NotificationModel(
        day: "10",
        mount: "Mayıs",
        title: "Bildirimler burada gösterilecek",
        isRead: false),
    NotificationModel(
        day: "09",
        mount: "Nisan",
        title: "Bildirimler burada gösterilecek",
        isRead: false),
    NotificationModel(
        day: "08",
        mount: "Mart",
        title: "Bildirimler burada gösterilecek",
        isRead: false),
    NotificationModel(
        day: "05",
        mount: "Şubat",
        title: "Bildirimler burada gösterilecek",
        isRead: true),
    NotificationModel(
        day: "04",
        mount: "Ocak",
        title: "Bildirimler burada gösterilecek",
        isRead: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColors.navbar,
      child: Column(
        children: [
          MyPaddings.pagePadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MyTexts.notifications,
                  style: MyTextstyles.title2(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Column(
              children: List.generate(
            notificationList.length,
            (index) => notificationFeild(
                day: notificationList[index].day,
                moon: notificationList[index].mount,
                title: notificationList[index].title,
                isRead: notificationList[index].isRead!),
          )),
        ],
      ),
    );
  }

  Widget notificationFeild(
          {String? day, String? moon, String? title, bool isRead = false}) =>
      MyPaddings.notificationPadding(
        child: Row(
          children: [
            Column(children: [
              Text(
                day!,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(moon!, style: MyTextstyles.bodyText2(isLight: true)),
            ]),
            MyPaddings.standartPadding(),
            gradientLine(isRead: isRead),
            MyPaddings.lowPadding(),
            Text(
              title!,
              style: MyTextstyles.bodyText1(),
            )
          ],
        ),
      );
}
