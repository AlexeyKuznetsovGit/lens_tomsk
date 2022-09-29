import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/domain/models/Users.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/custom_snack_bar.dart';

class InputTextField extends StatefulWidget {
   InputTextField({
    Key? key,
    required TextEditingController controller,
    required this.title,
    required this.textInpuType,
    required this.hintText,
    required this.obscureText,
    this.isAction = false,
    this.isBlackColorHintText = false,
    this.isEmail = false,
    this.isPassword = false,
    this.isName = false,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String title;
  final TextInputType textInpuType;
  final String hintText;
  final bool isEmail;
  final bool isPassword;
  final bool isName;
  bool obscureText;
  final bool isBlackColorHintText;
  final bool isAction;

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

bool isVisible = false;

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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

          obscureText: widget.obscureText ,
          keyboardType: widget.textInpuType,
          controller: widget._controller,
          validator: (value) {
            if (value!.isEmpty) {
              return "Пожалуйста введите данные";
            }
            if (widget.isEmail) {
              if (!emailValidatorRegExp.hasMatch(value))
                return "Введены некорректные символы";
            }
            if (widget.isPassword) {
              if (value.length < 8) return "Пароль слишком короткий";
            }

            if (widget.isName && nameValidatorRegExp.hasMatch(value)) {
              return "Имя введено некорректно";
            }
          },
   
          style: TextStyle(color: kBlackColor),
          decoration: InputDecoration(
            suffixIcon: widget.isAction
                ? !isVisible
                    ? GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                             widget.obscureText = !widget.obscureText;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: SvgPicture.asset(
                            "assets/icons/eye_see.svg",
                            height: 5.h,
                            width: 5.w,
                          ),
                        ),
                      )
                    : GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                             isVisible = !isVisible;
                            widget.obscureText = !widget.obscureText;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: SvgPicture.asset(
                            "assets/icons/eye_not_see.svg",
                            height: 5.h,
                            width: 5.w,
                          ),
                        ),
                      )
                : null,
            isDense: true,
            filled: true,
            fillColor: kBackGroundColor,
            
             hintText: widget.hintText, 
            
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            hintStyle: TextStyle(
              color: widget.isBlackColorHintText ? kBlackColor : kHintTextColor,
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
