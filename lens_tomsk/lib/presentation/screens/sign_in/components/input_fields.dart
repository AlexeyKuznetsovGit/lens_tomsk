import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';

class InputFields extends StatefulWidget {
  const InputFields({
    Key? key,
  }) : super(key: key);

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  final _emailField = TextEditingController();
  final _passwordField = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338.w,
      height: 292.h,
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
      child: Column(children: [
        Container(
          width: 318.w,
          height: 24.h,
          margin: EdgeInsets.fromLTRB(10.w, 20.h, 10.w, 20.h),
          alignment: Alignment.center,
          child: SectionTitle(text: "Вход"),
        ),
        Container(
          width: 298.w,
          height: 18.h,
          margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 4.h),
          alignment: Alignment.centerLeft,
          child: Text(
            "Ваш e-mail",
            style: TextStyle(
              color: kHintTextColor,
              fontFamily: 'Poppins-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          width: 318.w,
          height: 35.h,
          margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
          decoration: BoxDecoration(
            color: kBackGroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailField,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter your email";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                return "Please Enter Valid Email";
              }
            },
            decoration: InputDecoration(
              hintText: "Введите Ваш email",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              hintStyle: TextStyle(
                color: kHintTextColor,
                fontFamily: 'Poppins-Regular',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          width: 298.w,
          height: 18.h,
          margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 4.h),
          alignment: Alignment.centerLeft,
          child: Text(
            "Ваш пароль",
            style: TextStyle(
              color: kHintTextColor,
              fontFamily: 'Poppins-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
         Container(
          width: 318.w,
          height: 35.h,
          margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
          decoration: BoxDecoration(
            color: kBackGroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            obscureText: true,
            controller: _passwordField,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter your password";
              } else if (value.length < 8) {
                return "Password is too short";
              }
            },
            decoration: InputDecoration(
              hintText: "Введите Ваш пароль",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              hintStyle: TextStyle(
                color: kHintTextColor,
                fontFamily: 'Poppins-Regular',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        ButtonText(text: "Войти", buttonColor: kBlueColor, press: () {}, textColor: kWhiteColor, width: 318),
        SizedBox(height: 10.h,),
        Container(
         width: 298.w,
         height: 16.h,
         alignment: Alignment.center,
         child: Text(
                  "Забыли пароль?",
                  style: TextStyle(
                    color: kBlueColor,
                    fontFamily: 'OpenSans-Regular',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        )
      ]),
    );
  }
}
