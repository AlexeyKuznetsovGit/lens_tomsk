import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_product.dart';

class CartListProducts extends StatelessWidget {
  CartListProducts({
    Key? key,
  }) : super(key: key);
  List<int> listPrice = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(addedCartProducts.length, (int index) {
        listPrice.add(addedCartProducts[index].price *
            addedCartProducts[index].selectedCount!);
        print(listPrice);
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: CartProduct(
            listPrice: listPrice,
            index: index,
          ),
        );
      }),
    );
  }
}
