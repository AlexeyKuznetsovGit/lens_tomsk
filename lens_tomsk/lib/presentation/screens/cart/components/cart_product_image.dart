import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';

class CartProductImage extends StatelessWidget {
  const CartProductImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 10.h,
          left: 10.w,
          right: 10.w,
          bottom: 10.h),
      child: Image.asset(
        addedCartProducts[index].images[0],
        height: 106.h,
        width: 106.w,
      ),
    );
  }
}