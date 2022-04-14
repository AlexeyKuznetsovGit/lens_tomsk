import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 26.w,
          top: 20.h,
          right: 26.w,
          bottom: 10.h),
      child: Image.asset(
        product.images[0],
        width: 112.w,
        height: 112.h,
      ),
    );
  }
}
