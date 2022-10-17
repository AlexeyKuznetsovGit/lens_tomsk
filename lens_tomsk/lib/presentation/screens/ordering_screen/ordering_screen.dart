import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/ordering_screen/components/body_order.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class OrderingScreen extends StatelessWidget {
  const OrderingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackGroundColor,
        body: BodyOrder(),
        bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.profile,
      ),);
  }
}