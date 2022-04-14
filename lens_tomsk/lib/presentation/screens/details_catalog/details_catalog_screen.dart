import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/body_details_catalog.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class DetailsCatalogScreen extends StatelessWidget {
  const DetailsCatalogScreen({ Key? key }) : super(key: key);
  static String routeName = "/detailsCatalog";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kBackGroundColor,
       body: BodyDetailsCatalog(),
       bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.catalog,
      ),
    );
  }
}