import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class ButtonCircle extends StatefulWidget {
  const ButtonCircle({
    Key? key,
    required this.pathToIcon,
    required this.press,
  }) : super(key: key);
  final String pathToIcon;
  final GestureTapCallback press;

  @override
  State<ButtonCircle> createState() => _ButtonCircleState();
}

class _ButtonCircleState extends State<ButtonCircle> {
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
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(
                color: _pressButton ? kWhiteBlueColor : kBlueColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                widget.pathToIcon,
                width: 10.w,
                height: 10.h,
              ))
    );
  }
}
