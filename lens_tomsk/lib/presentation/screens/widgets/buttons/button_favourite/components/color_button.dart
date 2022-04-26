import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    Key? key,
    required this.color
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 28.w,
        height: 28.h,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          "assets/icons/star-white.svg",
          width: 10.w,
          height: 10.h,
        ));
  }
}
