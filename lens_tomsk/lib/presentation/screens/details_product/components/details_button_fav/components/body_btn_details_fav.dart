import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyBtnDetailsFav extends StatelessWidget {
  const BodyBtnDetailsFav({
    Key? key,
    required this.color
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 154.w,
        height: 38.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          "assets/icons/star-white.svg",
          width: 10.w,
          height: 10.h,
        ));
  }
}
