import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class ButtonDetails extends StatefulWidget {
  const ButtonDetails({
    Key? key,
    required this.pathToIcon,
    required this.press,
  }) : super(key: key);
  final String pathToIcon;
  final GestureTapCallback press;

  @override
  State<ButtonDetails> createState() => _ButtonDetailsState();
}

class _ButtonDetailsState extends State<ButtonDetails> {
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
              width: 154.w,
              height: 38.h,
              decoration: BoxDecoration(
                color: _pressButton ? kWhiteBlueColor : kBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                widget.pathToIcon,
                width: 10.w,
                height: 10.h,
              ))
    );
  }
}
