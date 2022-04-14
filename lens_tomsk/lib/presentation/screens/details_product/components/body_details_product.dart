import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_description.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_specifications.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_title_price_buttons.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_product_images.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_back.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

class BodyDetailsProduct extends StatelessWidget {
  const BodyDetailsProduct({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11.w, top: 20.h, right: 10.w),
                child: ButtonBack(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 11.w),
                child: Header(
                  width: 293,
                ),
              ),
            ],
          ),
            DetailsProductImages(product: product),
            DetailsTitlePriceButtons(product: product),
            DetailsSpecifications(product: product),
            DetailsDescription(product: product),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
