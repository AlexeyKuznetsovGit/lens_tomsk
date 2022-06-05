import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class CartProductTitle extends StatelessWidget {
  const CartProductTitle({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 18.h,
        right: 10.w,
      ),
      child: Container(
        height: 16.h,
        width: 202.w,
        child: Text(
          addedCartProducts[index].title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: kBlackColor,
            fontFamily: 'OpenSans-Regular',
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}