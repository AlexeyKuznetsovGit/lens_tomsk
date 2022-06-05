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

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({
    required this.selectedMenu,
    Key? key,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
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
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 21.w, top: 20.h),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "18335 \₽",
                      style: TextStyle(
          color: kBlackColor,
          fontFamily: 'Poppins-Regular',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 21.w, top: 20.h),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Итого:",
                      style: TextStyle(
                        color: kBlackColor,
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:11.6119.h),
                child: GestureDetector(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        height: 38.h,
        width: 318.w,
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "Оформить заказ",
          style: TextStyle(
                color: kWhiteColor,
                fontFamily: 'OpenSans-Regular',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600),
        ),
      ),
    ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                height: 68.h,
                width: 360.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/main.svg",
                        width: 16.w,
                        height: 16.h,
                        color: MenuState.home == selectedMenu
                            ? kBlueColor
                            : kBlackColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, HomeScreen.routeName),
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
                        color: MenuState.cart == selectedMenu
                            ? kBlueColor
                            : kBlackColor,
                      ),
                      onPressed: () => Navigator.pushNamed(
                          context, CartScreenProvider.routeName),
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
                      onPressed: () => Navigator.pushNamed(
                          context, FavouriteScreenProvider.routeName),
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
                          Navigator.pushNamed(context, ProfileScreen.routeName),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
