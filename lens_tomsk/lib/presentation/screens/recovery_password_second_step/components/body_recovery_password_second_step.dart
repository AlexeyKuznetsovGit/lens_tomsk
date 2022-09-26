import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/registration/registration_screen.dart';

import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';

class BodyRecoveryPasswordSecondStep extends StatefulWidget {
  const BodyRecoveryPasswordSecondStep({Key? key}) : super(key: key);

  @override
  State<BodyRecoveryPasswordSecondStep> createState() => _BodyRecoveryPasswordSecondStepState();
}

class _BodyRecoveryPasswordSecondStepState extends State<BodyRecoveryPasswordSecondStep> {
  final _confirmationField = TextEditingController();
final _newPasswordField = TextEditingController();
final _againNewPasswordField = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 10.h),
              child: Form(
      key: _formKey,
      child: Container(
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
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                child: Text(
                  "Восстановление пароля",
                  style: poppinsBold16,
                ),
              ),
            ),
            InputTextField(
              isName: true, //временно
              controller: _confirmationField,
              title: 'Код подтверждения',
              obscureText: false,
              hintText: "________",
              textInpuType: TextInputType.text,
            ),
            SizedBox(height: 10.h,),
             InputTextField(
             isPassword: true,
              controller: _newPasswordField,
              title: 'Новый пароль',
              obscureText: false,
              hintText: "********",
              textInpuType: TextInputType.text,
            ),
             SizedBox(height: 10.h,),
             InputTextField(
             isPassword: true,
              controller: _againNewPasswordField,
              title: 'Повторите новый пароль',
              obscureText: false,
              hintText: "********",
              textInpuType: TextInputType.text,
            ),
             SizedBox(height: 20.h,),
            Row(
              children: [
                SizedBox(width: 10.w,),
                ButtonText(
                    text: "Назад",
                    buttonColor: kGreyColor,
                    press: () {
                      Get.back();
                    },
                    textColor: kBlackColor,
                    width: 149),
                    SizedBox(width: 20.w,),
                ButtonText(
                    text: "Изменить пароль",
                    buttonColor: kBlueColor,
                    press: () {
                      if (_formKey.currentState!.validate()) {
                       print("Вы успешно поменяли пароль");
                      }
                    },
                    textColor: kWhiteColor,
                    width: 149),
              ],
            ),
        
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11.w, right: 11.w),
              child: Container(
                width: 338.w,
                height: 104.h,
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
                    width: 298.w,
                    height: 16.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 10.h),
                    child: Text(
                      "Нет учетной записи?",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ButtonText(text: "Зарегистрироваться", buttonColor: kGreyColor, press: (){Get.to(() => const RegistrationScreen(),  transition: tr.Transition.cupertino);}, textColor: kBlackColor, width: 318)
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

