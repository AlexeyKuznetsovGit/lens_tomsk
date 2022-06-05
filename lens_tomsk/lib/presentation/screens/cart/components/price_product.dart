import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class PriceProduct extends StatelessWidget {
  const PriceProduct({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${addedCartProducts[index].price} \₽",
        style: TextStyle(
          fontFamily:
              'Poppins-SemiBold',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: kBlueColor,
        ),
      ),
    );
  }
}

