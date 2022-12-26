import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/button_delete_item.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_product_image.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_product_title.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/price_product.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/price_product_with_discount.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/product_counter.dart';
import 'package:lens_tomsk/presentation/screens/cart/controllers/cart_controller.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';

class CartProduct extends StatelessWidget {
  CartProduct({Key? key, required this.index, required this.listPrice})
      : super(key: key);
  final int index;
  final List listPrice;
  CartController ctrl = Get.find(tag: "total");
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
            child: ButtonDeleteItem(
              index: index,
              onTap: () {
                ctrl.totalPrice.value = ctrl.totalPrice.value -
                    addedCartProducts[index].price *
                        addedCartProducts[index].selectedCount!;
              },
            ),
          ),
          Row(children: [
            GestureDetector(
                onTap: () {
                  Get.to(() =>
                      DetailsProductScreen(product: addedCartProducts[index]));
                },
                child: CartProductImage(index: index)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartProductTitle(index: index),
                if (addedCartProducts[index].selectOptions != null) ...[
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Базовая кривизна:",
                        style: poppinsRegular12.copyWith(color: kHintTextColor),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        addedCartProducts[index].selectOptions![0],
                        style: poppinsRegular12.copyWith(color: kBlackColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Оптическая сила:",
                        style: poppinsRegular12.copyWith(color: kHintTextColor),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        addedCartProducts[index].selectOptions![1],
                        style: poppinsRegular12.copyWith(color: kBlackColor),
                      ),
                    ],
                  )
                ],
                Spacer(),
                ProductCounter(
                  listPrice: listPrice,
                  index: index,
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
