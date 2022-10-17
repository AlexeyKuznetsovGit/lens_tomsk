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

final RegExp nameValidatorRegExp = RegExp('[a-zA-Z]');

// styles

TextStyle poppinsBold16 = TextStyle(
  fontFamily: 'Poppins-Bold',
  fontSize: 16.sp,
  height: 1.172.h,
  color: kBlackColor,
  fontWeight: FontWeight.w700,
);

TextStyle poppinsRegular12 = TextStyle(
  fontFamily: 'Poppins-Regular',
  fontSize: 12.sp,
  height: 1.172.h,
  color: kBlackColor,
  fontWeight: FontWeight.w400,
);

TextStyle poppinsSemiBold12 = TextStyle(
  fontFamily: 'Poppins-SemiBold',
  fontSize: 12.sp,
  height: 1.172.h,
  color: kBlackColor,
  fontWeight: FontWeight.w600,
);

TextStyle openSansSemiBold12 = TextStyle(
  fontFamily: 'OpenSans-SemiBold',
  fontSize: 12.sp,
  height: 1.172.h,
  color: kBlackColor,
  fontWeight: FontWeight.w600,
);
