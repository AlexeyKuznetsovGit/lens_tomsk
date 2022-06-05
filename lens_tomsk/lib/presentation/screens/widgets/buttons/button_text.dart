import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key, required this.text,required this.buttonColor, required this.press,required this.textColor, required this.width})
      : super(key: key);
  final String text;
  final double width;
  final Color textColor;
  final Color buttonColor;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        height: 38.h,
        width: width.w,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontFamily: 'OpenSans-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
