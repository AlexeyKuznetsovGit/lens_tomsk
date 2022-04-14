import 'package:flutter/material.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsProductInfo extends StatelessWidget {
  const DetailsProductInfo({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
         10.w,
         20.h,
         10.w,
         5.h),
      child: Text(
        product.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: kBlackColor,
          fontFamily: 'OpenSans-SemiBold',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
