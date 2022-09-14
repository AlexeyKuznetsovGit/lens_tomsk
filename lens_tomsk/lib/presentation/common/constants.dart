import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


// colors
const kBackGroundColor = Color(0xFFF6F7F9);
const kBlueColor = Color(0xFF0D53C4);
const kWhiteColor = Color(0xFFFFFFFF);
const kHintTextColor = Color(0xFFADADAD);
const kWhiteBlueColor = Color(0xFF74A6F6);
const kGreyColor = Color(0xFFE9E9E9);
const kBlackColor = Color(0xFF000004);
const kGreyNoActivity = Color(0xFF374957);
const kGreenSnackBar = Color(0xFF22C878);

// validations
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

// styles

 TextStyle poppinsBold16 = TextStyle(
    fontFamily: 'Poppins-Bold',
    fontSize: 16.sp,
    height: 1.172.h,
    color: kBlackColor,
    fontWeight: FontWeight.w700,
  );
