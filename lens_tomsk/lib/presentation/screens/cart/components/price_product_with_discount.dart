import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class PriceProductWithDiscount extends StatelessWidget {
  const PriceProductWithDiscount({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${addedCartProducts[index].oldPrice} \₽",
        style: TextStyle(
          fontFamily: 'Poppins-Regular',
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: kWhiteBlueColor,
          decoration: TextDecoration
              .lineThrough,
          decorationThickness: 2,
        ),
      ),
    );
  }
}

