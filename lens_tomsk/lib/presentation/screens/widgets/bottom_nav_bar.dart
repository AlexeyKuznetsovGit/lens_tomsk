import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/domain/models/Users.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/cart/cart_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/favourite/favourite_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/home/home_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/profile/profile_screen.dart';
import 'package:lens_tomsk/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class BottomNavBar extends StatelessWidget {
   BottomNavBar({
    required this.selectedMenu,
    Key? key,
  }) : super(key: key);

  final MenuState selectedMenu;
  bool isAuth = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 8,
            color: kBlueColor.withOpacity(0.1),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/main.svg",
                  width: 16.w,
                  height: 16.h,
                  color:
                      MenuState.home == selectedMenu ? kBlueColor : kBlackColor,
                ),
                onPressed: () {Get.to(() => const HomeScreenProvider(),  transition: tr.Transition.cupertino);}, 
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/catalog.svg",
                  width: 16.w,
                  height: 16.h,
                  color: MenuState.catalog == selectedMenu
                      ? kBlueColor
                      : kBlackColor,
                ),
                onPressed: () {Get.to(() => const CatalogScreen(),  transition: tr.Transition.cupertino);},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/cart.svg",
                  width: 16.w,
                  height: 16.h,
                  color:
                      MenuState.cart == selectedMenu ? kBlueColor : kBlackColor,
                ),
                onPressed: () {Get.to(() => const CartScreenProvider(),  transition: tr.Transition.cupertino);},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/star.svg",
                  width: 16.w,
                  height: 16.h,
                  color: MenuState.favourite == selectedMenu
                      ? kBlueColor
                      : kBlackColor,
                ),
                onPressed: () {Get.to(() => const FavouriteScreenProvider(),  transition: tr.Transition.cupertino);},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  width: 16.w,
                  height: 16.h,
                  color: MenuState.profile == selectedMenu
                      ? kBlueColor
                      : kBlackColor,
                ),
                onPressed: () {Get.to(() => isAuth ? ProfileScreen(name: users[0].name, email: users[0].email, password: users[0].password) : SignInScreen(),  transition: tr.Transition.cupertino);}
                    
              ),
            ],
          )),
    );
  }
}
