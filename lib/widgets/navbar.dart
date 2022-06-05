import 'package:educto2/my_state.dart';
import 'package:flutter/material.dart';

import '../consts/my_colors.dart';
import '../consts/my_paddings.dart';
import '../consts/my_texts.dart';
import '../consts/my_textstyles.dart';
import '../pages/categories_page.dart';
import '../pages/home_page.dart';
import '../pages/last_edit_page.dart';
import '../pages/my_account.dart';
import '../pages/my_favorites_page.dart';
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
 
  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Container(
          margin: const EdgeInsets.only(top: 8),
          color: MyColors.navbar,
          child: Row(
            children: [
              Visibility(
                visible: false,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: navItem(
                  id: -1,
                    icon: Icons.category_outlined, title: MyTexts.categories),
              ),
            ],
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(
              icon: Icons.category_outlined,
              title: MyTexts.categories,
              contextt: context,
              id: 1,
              page: CategoriesPage()),
          navItem(
              icon: Icons.filter_list,
              title: MyTexts.lastEditTitle,
              contextt: context,
              id: 2,
              page: LastEditPage()),
          navItem(
              icon: Icons.home_outlined,
              title: MyTexts.homePage,
              id: 3,
              contextt: context,
              page: HomePage()),
          navItem(
              icon: Icons.favorite_outline,
              title: MyTexts.favoritesTitle,
              contextt: context,
              id: 4,
              page: MyFavoritesPage()),
          navItem(
              icon: Icons.account_circle_outlined,
              title: MyTexts.myAccount,
              contextt: context,
              id: 5,
              page: const MyAccountPage()),
        ],
      ),
    ],
  );

Widget navItem(
        {IconData? icon,
        String? title,
      
        BuildContext? contextt,
        Widget? page,
         required int id
        }) =>
    InkWell(
      onTap: () {
        setState(() {
          MyState.selectedNavbarID=id;
        });
        Navigator.push(
            contextt!, MaterialPageRoute(builder: (context) => page!));
      },
      child: Stack(
        children: [
          Container(
            //margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: MyState.selectedNavbarID==id ? MyColors.primary : Colors.transparent),
            child: MyPaddings.navbarPadding(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  Text(
                    title!,
                    style: MyTextstyles.navbar(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

    
  }
