import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/favourite/components/body_favourite.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BodyFavourite(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
