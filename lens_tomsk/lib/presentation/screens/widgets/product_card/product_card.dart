import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/button_add_cart_provider.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_image.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_title.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_price.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.buttonUp,
    required this.product,
  }) : super(key: key);

  final Product product;
  final Widget buttonUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
        height: 217.h,
        width: 164.w,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kBlueColor.withOpacity(0.1),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                ProductImage(product: product),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.h, right: 10.w),
                      child: Column(
                        children: [
                          buttonUp,
                          SizedBox(
                            height: 5.h,
                          ),
                          ButtonAddCartProvider(product: product),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ProductTitle(product: product),
            ProductPrice(product: product),
          ],
        ),
      ),
    );
  }
}
