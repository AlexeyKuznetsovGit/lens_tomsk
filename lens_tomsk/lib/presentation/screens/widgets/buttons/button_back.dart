import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
    alignment: Alignment.center,
    width: 35.w,
    height:35.h,
             decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: kBlueColor.withOpacity(0.1),
            blurRadius: 5,
          )
        ],
      ),
    child: SvgPicture.asset(
      "assets/icons/back.svg",
      width: 15.w,
      height: 15.h,
    )),
    );
  }
}