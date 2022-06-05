import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({Key? key, required this.text, required this.price})
      : super(key: key);
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, bottom: 10.h, right: 10.w),
      height: 35.h,
      width: 149.w,
      decoration: BoxDecoration(
        color: kBackGroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10.w),
              child: Text(
                text,
                style: TextStyle(
                  color: kHintTextColor,
                  fontFamily: 'Poppins-Regular',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.w),
              alignment: Alignment.centerRight,
              child: Text(
                "$price \₽",
                style: TextStyle(
                  color: kBlackColor,
                  fontFamily: 'Poppins-Regular',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
