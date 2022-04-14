import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/catalog/components/body_catalog.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);
  static String routeName = "/catalog";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BodyCatalog(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.catalog,
      ),
    );
  }
}
