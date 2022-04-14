import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.width
  }) : super(key: key);

  final int width;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      width: width.w,
      height: 35.h,
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
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Поиск по названию или категории...',
          hintStyle: TextStyle(
              fontFamily: 'Poppins-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: kHintTextColor),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SvgPicture.asset(
              "assets/icons/search.svg",
            ),
          ),
        ),
      ),
    ));
  }
}
