import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class ButtonText extends StatefulWidget {
  const ButtonText({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  State<ButtonText> createState() => _ButtonTextState();
}

class _ButtonTextState extends State<ButtonText> {
  bool _pressButton = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          _pressButton = !_pressButton;
        }),
        widget.press
      },
      child: Container(
        alignment: Alignment.center,
        height: 38.h,
        width: 149.w,
        decoration: BoxDecoration(
          color: _pressButton ? kWhiteBlueColor : kGreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
              color: _pressButton ? kWhiteColor : kBlackColor,
              fontFamily: 'OpenSans-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
