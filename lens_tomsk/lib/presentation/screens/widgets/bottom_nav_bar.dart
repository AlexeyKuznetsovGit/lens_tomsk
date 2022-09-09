import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/cart/cart_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/favourite/favourite_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/home/home_screen.dart';
import 'package:lens_tomsk/presentation/screens/profile/profile_screen.dart';
import 'package:lens_tomsk/presentation/screens/sign_in/sign_in_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.selectedMenu,
    Key? key,
  }) : super(key: key);

  final MenuState selectedMenu;

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
                onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName), 
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
                onPressed: () =>
                    Navigator.pushNamed(context, CatalogScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/cart.svg",
                  width: 16.w,
                  height: 16.h,
                  color:
                      MenuState.cart == selectedMenu ? kBlueColor : kBlackColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, CartScreenProvider.routeName),
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
                onPressed: () => Navigator.pushNamed(context, FavouriteScreenProvider.routeName),
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
                onPressed: () =>
                    Navigator.pushNamed(context, SignInScreen.routeName),
              ),
            ],
          )),
    );
  }
}
