import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/domain/models/Users.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/cart_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/favourite/favourite_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/home/home_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/profile/profile_screen.dart';
import 'package:lens_tomsk/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/main_screen/controller/main_screen_controller.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainScreenController controller =
      Get.put(MainScreenController(), tag: 'menu');
  bool isAuth = true;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        extendBody: false,
        bottomNavigationBar: Container(
            height: 68.h,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: controller.index.value == 2
                  ? []
                  : [
                      BoxShadow(
                        offset: Offset(0, -1),
                        blurRadius: 8,
                        color: kBlueColor.withOpacity(0.1),
                      ),
                    ],
              borderRadius: controller.index.value == 2
                  ? null
                  : BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: kWhiteColor,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: kBlueColor,
                currentIndex: controller.index.value,
                unselectedItemColor: kBlackColor,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                iconSize: 16.w,
                onTap: (index) {
                  controller.index.value = index;
                },
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/main.svg",
                        width: 16.w,
                        height: 16.h,
                        color: controller.index.value == 0 ? kBlueColor : null,
                      ),
                      label: "a"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/catalog.svg",
                        width: 16.w,
                        height: 16.h,
                        color: controller.index.value == 1 ? kBlueColor : null,
                      ),
                      label: "a"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/cart.svg",
                        width: 16.w,
                        height: 16.h,
                        color: controller.index.value == 2 ? kBlueColor : null,
                      ),
                      label: "a"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/star.svg",
                        width: 16.w,
                        height: 16.h,
                        color: controller.index.value == 3 ? kBlueColor : null,
                      ),
                      label: "a"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/profile.svg",
                        width: 16.w,
                        height: 16.h,
                        color: controller.index.value == 4 ? kBlueColor : null,
                      ),
                      label: "a"),
                ],
              ),
            )),
        body: Obx(() {
          switch (controller.index.value) {
            case 0:
              return HomeScreenProvider();
            case 1:
              return CatalogScreen();
            case 2:
              return CartScreenProvider();
            case 3:
              return FavouriteScreenProvider();
            case 4:
              return isAuth
                  ? ProfileScreen(
                      name: users[0].name,
                      email: users[0].email,
                      password: users[0].password)
                  : SignInScreen();
            default:
              return Container();
          }
        })));
  }
}
