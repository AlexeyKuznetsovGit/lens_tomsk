import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class OptionSort extends StatelessWidget {
  const OptionSort({
    Key? key,
    required this.text
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: GestureDetector(
           onTap: () {},
           child: Container(
             width: 318.w,
             height: 38.h,
             decoration: BoxDecoration(
               color: kBackGroundColor,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Center(
                 child: Text(
               text,
               style: TextStyle(
                 color: kBlackColor,
                 fontFamily: 'Poppins-Regular',
                 fontSize: 12.sp,
                 fontWeight: FontWeight.w400,
               ),
             )),
           )),
    );
  }
}
