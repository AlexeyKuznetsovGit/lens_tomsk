import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {Key? key,
      required TextEditingController controller,
      required this.title,
      required this.textInpuType,
      required this.hintText,
      required this.obscureText,
      this.textError = '',
      required this.isEmail,
      this.additionalError = false})
      : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String title;
  final TextInputType textInpuType;
  final String hintText;
  final String textError;
  final bool isEmail;
  final bool additionalError;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 298.w,
        height: 18.h,
        margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 4.h),
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            color: kHintTextColor,
            fontFamily: 'Poppins-Regular',
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w,),
        child: TextFormField(
          obscureText: obscureText,
          keyboardType: textInpuType,
          controller: _controller,
          validator: (value) {
            if (value!.isEmpty) {
              return "Пожалуйста введите данные";
            } else if (isEmail
                ? !emailValidatorRegExp.hasMatch(value)
                : value.length < 8) {
              return isEmail
                  ? "Введены некорректные символы"
                  : "Пароль слишком короткий";
            }
            if (additionalError) {
              return textError;
            }
          },
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: kBackGroundColor,
            hintText: hintText,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            hintStyle: TextStyle(
              color: kHintTextColor,
              fontFamily: 'Poppins-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(style: BorderStyle.none, width: 0.w)),
          ),
        ),
      ),

      /* Container(
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
      Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 20.h),
        child: TextFormField(
          obscureText: true,
          controller: _passwordField,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your password";
            } else if (value.length < 8) {
              return "Password is too short";
            }
            return null;
          },
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: kBackGroundColor,
            hintText: "Введите Ваш пароль",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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

      ButtonText(
          text: "Войти",
          buttonColor: kBlueColor,
          press: () {
            if (_formKey.currentState!.validate()) {
              print('Авторизация успешна');
            }
          },
          textColor: kWhiteColor,
          width: 318),
      SizedBox(
        height: 10.h,
      ),
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
      ),
      SizedBox(
        height: 20.h,
      ), */
    ]);
  }
}
