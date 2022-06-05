import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

 void showCustomSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Container(
        height: 20.h,
        alignment: Alignment.center,
        width: 318.w,
        child: Text(
              'Товар был успешно добавлен в корзину',
              style: TextStyle(
                    color: kWhiteColor,
                    fontFamily: 'OpenSans-Regular',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600),
            ),

      ),
      backgroundColor: kGreenSnackBar.withOpacity(0.8),
      duration: Duration(seconds: 3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 10.h, left: 21.w, right: 21.w),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }