import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';
import 'package:lens_tomsk/presentation/screens/widgets/phone_text_field.dart';

class UserTextFields extends StatefulWidget {
  const UserTextFields(
      {Key? key,
      required this.name,
      required this.email,
      required this.password})
      : super(key: key);
  final String name;
  final String email;
  final String password;

  @override
  State<UserTextFields> createState() => _UserTextFieldsState();
}

final _nameField = TextEditingController();
final _emailField = TextEditingController();
final _passwordField = TextEditingController();
final _phoneField = TextEditingController();

final _cityField = TextEditingController();
final _adresslField = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _UserTextFieldsState extends State<UserTextFields> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Form(
          key: _formKey,
          child: Container(
            height: 490.h,
            width: 338.w,
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(10.r)),
            child: Column(children: [
              SizedBox(
                height: 20.h,
              ),
              InputTextField(
            
                  isName: true,
                  controller: _nameField,
                  title: 'Имя',
                  textInpuType: TextInputType.text,
                  hintText: widget.name,
                  isBlackColorHintText: true,
                  obscureText: false),
              SizedBox(
                height: 10.h,
              ),
              InputTextField(
           
                  isEmail: true,
                  controller: _emailField,
                  title: 'E-mail',
                  textInpuType: TextInputType.emailAddress,
                  hintText: widget.email,
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
                  hintText: widget.password,
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
                  hintText: 'Томск',
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
                  hintText: 'ул. Ленина, 74',
                  isBlackColorHintText: true,
                  obscureText: false),
              SizedBox(
                height: 10.h,
              ),
              PhoneTextField(title: "Телефон", hint: '(000) 000-0000', controller: _phoneField,),
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
                      press: () {},
                      textColor: kWhiteColor,
                      width: 149),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
