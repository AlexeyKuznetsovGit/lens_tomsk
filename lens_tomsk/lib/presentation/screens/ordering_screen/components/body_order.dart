import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Users.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/ordering_screen/components/order_text_input.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_back.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';
import 'package:lens_tomsk/presentation/screens/widgets/phone_text_field.dart';

class BodyOrder extends StatefulWidget {
  BodyOrder({Key? key, required this.totalPrice}) : super(key: key);
  final int totalPrice;
  @override
  State<BodyOrder> createState() => _BodyOrderState();
}

class _BodyOrderState extends State<BodyOrder> {
  @override
  void initState() {
    _nameField.text = users[0].name;
    _emailField.text = users[0].email;
    _cityField.text = "Томск";
    _adresslField.text = "ул. Ленина, 74";
    super.initState();
  }

  final _nameField = TextEditingController();

  final _emailField = TextEditingController();

  final _phoneField = TextEditingController();

  final _cityField = TextEditingController();

  final _adresslField = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 11.w, right: 10.w),
                  child: ButtonBack(),
                ),
                Container(
                  width: 293.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.1),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "Оформление заказа",
                    style: poppinsRegular12,
                  )),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 10.h,
                ),
                OrderTextInput(
                    nameField: _nameField,
                    emailField: _emailField,
                    phoneField: _phoneField,
                    cityField: _cityField,
                    adresslField: _adresslField),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 106.h,
                  width: 338.w,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.1),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Итого:',
                              style: openSansSemiBold12,
                            ),
                            Spacer(),
                            Text(
                              '${widget.totalPrice} ₽',
                              style: poppinsSemiBold12,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                          ]),
                      SizedBox(
                        height: 12.h,
                      ),
                      ButtonText(
                          text: "Оформить заказ",
                          buttonColor: kBlueColor,
                          press: () {},
                          textColor: kWhiteColor,
                          width: 318)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
