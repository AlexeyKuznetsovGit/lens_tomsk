import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/button_delete_item.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_product_image.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_product_title.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/price_product.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/price_product_with_discount.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/product_counter.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126.h,
      width: 338.w,
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
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, right: 10.w),
            child: ButtonDeleteItem(index: index),
          ),
          Row(children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsProductScreen(
                              product: addedCartProducts[index])));
                },
                child: CartProductImage(index: index)),
            Column(
              children: [
                CartProductTitle(index: index),
                Row(
                  children: [
                    ProductCounter(index: index),
                    if (addedCartProducts[index].oldPrice != 0) ...[
                      Padding(
                          padding: EdgeInsets.only(
                              right: 5.w, bottom: 18.h, left: 50.w, top: 56.h),
                          child: PriceProduct(index: index)),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 18.h, top: 56.h, right: 10.w),
                        child: PriceProductWithDiscount(index: index),
                      ),
                    ] else ...[
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 18.h, left: 95.w, top: 56.h,right: 10.w),
                        child: PriceProduct(index: index),
                      ),
                    ],
                  ],
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
