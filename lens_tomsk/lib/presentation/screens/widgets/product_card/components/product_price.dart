import 'package:flutter/material.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (product.oldPrice != 0) ...[
          Container(
            padding: EdgeInsets.only(right: 5.w),
            child: Text(
              "${product.price} \₽",
              style: TextStyle(
                fontFamily: 'Poppins-SemiBold',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: kBlueColor,
              ),
            ),
          ),
          Container(
            child: Text(
              "${product.oldPrice} \₽",
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kWhiteBlueColor,
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
              ),
            ),
          ),
        ] else ...[
          Container(
            child: Text(
              "${product.price} \₽",
              style: TextStyle(
                fontFamily: 'Poppins-SemiBold',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: kBlueColor,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
