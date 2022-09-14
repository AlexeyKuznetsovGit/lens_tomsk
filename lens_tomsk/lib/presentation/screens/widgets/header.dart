import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key, required this.width, required this.text}) : super(key: key);
  final String text;
  final int width;

  @override
  Size get preferredSize => Size.fromHeight(35.h);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      contentPadding:
          EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      hintText: text,
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
    );
  }
}