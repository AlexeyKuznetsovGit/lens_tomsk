import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonCloseWindow extends StatelessWidget {
  const ButtonCloseWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => Navigator.of(context).pop(),
        child: Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: SvgPicture.asset(
            "assets/icons/krest.svg",
            height: 24.h,
            width: 24.w,
          ),
        ));
  }
}
