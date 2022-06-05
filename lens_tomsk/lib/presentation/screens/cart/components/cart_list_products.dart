import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_product.dart';


class CartListProducts extends StatelessWidget {
  const CartListProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          addedCartProducts.length,
          (int index) => Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: CartProduct(index: index,),
              )),
    );
  }
}

