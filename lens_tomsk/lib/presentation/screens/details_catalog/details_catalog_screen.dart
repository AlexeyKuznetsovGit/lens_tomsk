import 'package:flutter/material.dart';
import 'package:lens_tomsk/domain/models/Category_product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/common/enums.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/body_details_catalog.dart';
import 'package:lens_tomsk/presentation/screens/widgets/bottom_nav_bar.dart';

class DetailsCatalogScreen extends StatelessWidget {
  const DetailsCatalogScreen({Key? key, required this.category_name}) : super(key: key);
  static String routeName = "/detailsCatalog";
  final String category_name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kBackGroundColor,
       body: BodyDetailsCatalog(category_name: category_name),
       bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.catalog,
      ),
    );
  }
}