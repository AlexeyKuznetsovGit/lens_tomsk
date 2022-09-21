import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/sign_in/components/body_sign_in_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        body: BodySignInScreen(),
        bottomNavigationBar: BottomNavBar(
          selectedMenu: MenuState.profile,
        ),
      ),
    );
  }
}