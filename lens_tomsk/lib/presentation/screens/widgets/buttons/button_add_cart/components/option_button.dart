import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({Key? key, required this.optionName, required this.style})
      : super(key: key);
  final String optionName;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318.w,
      height: 38.h,
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(optionName, style: style)),
    );
  }
}
