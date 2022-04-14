import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/body.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.cart,
      ),
    );
  }
}
