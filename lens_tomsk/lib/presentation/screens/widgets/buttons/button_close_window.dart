import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonCloseWindow extends StatelessWidget {
  const ButtonCloseWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child:  SvgPicture.asset("assets/icons/krest.svg")
            );
  }
}
