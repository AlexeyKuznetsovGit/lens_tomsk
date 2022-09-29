import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class PhoneTextField extends StatefulWidget {
  final String hint, title;
  final TextEditingController controller;

  const PhoneTextField({
    Key? key,
    required this.title,
    required this.hint,
    required this.controller,

  }) : super(key: key);

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  bool isValidate = true;
  bool isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
        width: 298.w,
        height: 18.h,
        margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 4.h),
        alignment: Alignment.centerLeft,
        child: Text(
          widget.title,
          style: TextStyle(
            color: kHintTextColor,
            fontFamily: 'Poppins-Regular',
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
        Padding(
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
            ),
            child: TextFormField(
              onTap: () {},
              keyboardType: TextInputType.phone,
              controller: widget.controller,
              inputFormatters: [TextInputMask(mask: '(999) 999-9999')],
              style: TextStyle(
                color: kBlackColor,
                fontFamily: 'Poppins-Regular',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                prefixIconConstraints:
                BoxConstraints(maxWidth: 30.w, minHeight: 35.h),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 9.h, left: 10.w),
                  child: Text(
                    '+7 ',
                    style: TextStyle(
                      color: kBlackColor,
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                isDense: true,
                filled: true,
                fillColor: kBackGroundColor,
                hintText: widget.hint,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h), 
                hintStyle: TextStyle(
                  color: kHintTextColor,
                  fontFamily: 'Poppins-Regular',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(style: BorderStyle.none, width: 0.w)),
              ),
            ),
          ),
        
      ],
    );
  }
}
