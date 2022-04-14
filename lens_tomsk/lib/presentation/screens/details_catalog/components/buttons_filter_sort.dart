import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';

class ButtonsFilterSort extends StatelessWidget {
  const ButtonsFilterSort({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: 338.w,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: kBlueColor.withOpacity(0.1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonText(text: "Фильтры", press: (){}),
            SizedBox(width: 20.w),
            ButtonText(text: "По умолчанию", press: (){})
          ]),
    );
  }
}