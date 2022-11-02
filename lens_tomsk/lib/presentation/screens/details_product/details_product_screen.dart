import 'package:flutter/material.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/body_details_product.dart';

class DetailsProductScreen extends StatelessWidget {
  final Product product;
  const DetailsProductScreen({Key? key,  required this.product,}) : super(key: key);
  static String routeName = "/detailsProduct";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BodyDetailsProduct(product: product),
      
    );
  }
}
