import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/body_details_catalog.dart';

class DetailsCatalogScreen extends StatelessWidget {
  const DetailsCatalogScreen({Key? key, required this.categoryName}) : super(key: key);
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kBackGroundColor,
       body: BodyDetailsCatalog(categoryName: categoryName),
      
    );
  }
}