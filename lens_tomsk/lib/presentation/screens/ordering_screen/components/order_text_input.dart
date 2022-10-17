import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';
import 'package:lens_tomsk/presentation/screens/widgets/phone_text_field.dart';

class OrderTextInput extends StatelessWidget {
  const OrderTextInput({
    Key? key,
    required TextEditingController nameField,
    required TextEditingController emailField,
    required TextEditingController phoneField,
    required TextEditingController cityField,
    required TextEditingController adresslField,
  })  : _nameField = nameField,
        _emailField = emailField,
        _phoneField = phoneField,
        _cityField = cityField,
        _adresslField = adresslField,
        super(key: key);

  final TextEditingController _nameField;
  final TextEditingController _emailField;
  final TextEditingController _phoneField;
  final TextEditingController _cityField;
  final TextEditingController _adresslField;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: kBlueColor.withOpacity(0.1),
          blurRadius: 5,
        )
      ], color: kWhiteColor, borderRadius: BorderRadius.circular(10.r)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 20.h,
        ),
        InputTextField(
            isName: true,
            controller: _nameField,
            title: 'Имя',
            textInpuType: TextInputType.text,
            hintText: 'Имя',
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
            hintText: 'E-mail',
            isBlackColorHintText: true,
            obscureText: false),
        SizedBox(
          height: 10.h,
        ),
        PhoneTextField(
          title: "Телефон",
          hint: '(000) 000-0000',
          controller: _phoneField,
        ),
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
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text('Способ получения',
              style: poppinsRegular12.copyWith(color: kHintTextColor)),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 38.h,
          width: 318.w,
          margin: EdgeInsets.only(left: 10.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r), color: kGreyColor),
          child: Text(
            "Выберите способ получения",
            style: poppinsRegular12.copyWith(color: kHintTextColor),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text('Способ оплаты',
              style: poppinsRegular12.copyWith(color: kHintTextColor)),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 38.h,
          width: 318.w,
          margin: EdgeInsets.only(left: 10.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r), color: kGreyColor),
          child: Text(
            "Выберите способ оплаты",
            style: poppinsRegular12.copyWith(color: kHintTextColor),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ]),
    );
  }
}
