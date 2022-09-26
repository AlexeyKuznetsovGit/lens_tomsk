import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/recovery_password_first_step/recovery_password_first_step.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class SignInInputFields extends StatefulWidget {
  const SignInInputFields({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInInputFields> createState() => _SignInInputFieldsState();
}

class _SignInInputFieldsState extends State<SignInInputFields> {
  final _emailField = TextEditingController();
  final _passwordField = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
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
                  "Вход",
                  style: poppinsBold16,
                ),
              ),
            ),
            InputTextField(
              isEmail: true,
              controller: _emailField,
              title: 'Ваш e-mail',
              obscureText: false,
              hintText: "example@mail.ru",
              textInpuType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10.h,),
            InputTextField(
              isEmail: false,
              controller: _passwordField,
              title: 'Ваш пароль',
               obscureText: true,
              hintText: "********",
              textInpuType: TextInputType.text
            ),
             SizedBox(height: 20.h,),
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
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){Get.to(() => const RecoveryPasswordFirstStep(),  transition: tr.Transition.cupertino);},
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
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
