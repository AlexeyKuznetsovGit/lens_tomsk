import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_circle.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/button_favourite_provider.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_image.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_title.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_price.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

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
                          // ButtonCircle(pathToIcon: "assets/icons/star-white.svg", press: () {}),
                          ButtonFavouriteProvider(
                            product: product,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ButtonCircle(
                              pathToIcon: "assets/icons/cart-white.svg",
                              press: () {}),
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
