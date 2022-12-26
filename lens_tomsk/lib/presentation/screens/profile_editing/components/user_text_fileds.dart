import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/domain/models/Users.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/profile/profile_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';
import 'package:lens_tomsk/presentation/screens/widgets/phone_text_field.dart';

class UserTextFields extends StatefulWidget {
  UserTextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<UserTextFields> createState() => _UserTextFieldsState();
}

class _UserTextFieldsState extends State<UserTextFields> {
  @override
  void initState() {
    _nameField.text = users[0].name;
    _emailField.text = users[0].email;
    _passwordField.text = users[0].password;
    _cityField.text = 'Томск';
    _adresslField.text = 'ул. Ленина, 74';
    super.initState();
  }

  final TextEditingController _nameField = TextEditingController();
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();
  final TextEditingController _phoneField = TextEditingController();

  final TextEditingController _cityField = TextEditingController();
  final TextEditingController _adresslField = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Align(
            alignment: Alignment.topCenter,
            child: Form(
              key: _formKey,
              child: Container(
                height: 490.h,
                width: 338.w,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  InputTextField(
                      onChanged: (text) {
                        name = text;
                      },
                      isName: true,
                      controller: _nameField,
                      title: 'Имя',
                      textInpuType: TextInputType.text,
                      isBlackColorHintText: true,
                      obscureText: false),
                  SizedBox(
                    height: 10.h,
                  ),
                  InputTextField(
                      onChanged: (text) {
                        email = text;
                      },
                      isEmail: true,
                      controller: _emailField,
                      title: 'E-mail',
                      textInpuType: TextInputType.emailAddress,
                      isBlackColorHintText: true,
                      obscureText: false),
                  SizedBox(
                    height: 10.h,
                  ),
                  InputTextField(
                      isAction: true,
                      isPassword: true,
                      controller: _passwordField,
                      title: 'Пароль',
                      textInpuType: TextInputType.text,
                      isBlackColorHintText: true,
                      obscureText: true),
                  SizedBox(
                    height: 10.h,
                  ),
                  InputTextField(
                      isName: true,
                      controller: _cityField,
                      title: 'Город',
                      textInpuType: TextInputType.text,
                      isBlackColorHintText: true,
                      obscureText: false),
                  SizedBox(
                    height: 10.h,
                  ),
                  InputTextField(
                      isName: true,
                      controller: _adresslField,
                      title: 'Адрес',
                      textInpuType: TextInputType.text,
                      isBlackColorHintText: true,
                      obscureText: false),
                  SizedBox(
                    height: 10.h,
                  ),
                  PhoneTextField(
                    title: "Телефон",
                    hint: '(800) 555-3535',
                    controller: _phoneField,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      ButtonText(
                          text: 'Назад',
                          buttonColor: kGreyColor,
                          press: () {
                            Get.back();
                          },
                          textColor: kBlackColor,
                          width: 149),
                      SizedBox(
                        width: 20.w,
                      ),
                      ButtonText(
                          text: 'Сохранить',
                          buttonColor: kBlueColor,
                          press: () {
                            if (name != null || email != null) {
                              Get.back(result: {
                                "name": name,
                                "email": email,
                              });
                            }
                          },
                          textColor: kWhiteColor,
                          width: 149),
                    ],
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
