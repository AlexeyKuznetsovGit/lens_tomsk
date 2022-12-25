import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/option_button.dart';
import 'package:lens_tomsk/presentation/screens/widgets/input_text_field.dart';
import 'package:lens_tomsk/presentation/screens/widgets/phone_text_field.dart';

class OrderTextInput extends StatefulWidget {
  OrderTextInput({
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
  State<OrderTextInput> createState() => _OrderTextInputState();
}

class _OrderTextInputState extends State<OrderTextInput> {
  bool isOpen = false;

  String firstParameter = '';
  String secondParameter = '';
  List<String> firstList = ['Доставка - 180 ₽', 'Самовывоз - 0 ₽'];
  List<String> secondList = ['Оплата картой банка', 'Оплата при получении'];

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
            controller: widget._nameField,
            title: 'Имя',
            textInpuType: TextInputType.text,
            hintText:
                widget._nameField.text.isEmpty ? 'Имя' : widget._nameField.text,
            isBlackColorHintText: true,
            obscureText: false),
        SizedBox(
          height: 10.h,
        ),
        InputTextField(
            isEmail: true,
            controller: widget._emailField,
            title: 'E-mail',
            textInpuType: TextInputType.emailAddress,
            hintText: widget._emailField.text.isEmpty
                ? 'E-mail'
                : widget._emailField.text,
            isBlackColorHintText: true,
            obscureText: false),
        SizedBox(
          height: 10.h,
        ),
        PhoneTextField(
          title: "Телефон",
          hint: '(800) 555-3535',
          controller: widget._phoneField,
        ),
        SizedBox(
          height: 10.h,
        ),
        InputTextField(
            isName: true,
            controller: widget._cityField,
            title: 'Город',
            textInpuType: TextInputType.text,
            hintText: widget._cityField.text.isEmpty
                ? 'Город'
                : widget._cityField.text,
            isBlackColorHintText: true,
            obscureText: false),
        SizedBox(
          height: 10.h,
        ),
        InputTextField(
            isName: true,
            controller: widget._adresslField,
            title: 'Адрес',
            textInpuType: TextInputType.text,
            hintText: widget._adresslField.text.isEmpty
                ? 'Адрес'
                : widget._adresslField.text,
            isBlackColorHintText: true,
            obscureText: false),
        SizedBox(
          height: 10.h,
        ),
        ...List.generate(
          2,
          (indexName) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, bottom: 4.h),
                child: Text(
                  indexName == 0 ? 'Способ получения' : "Способ оплаты",
                  style: poppinsRegular12.copyWith(color: kHintTextColor),
                ),
              ),
              ExpansionWidget(
                  expandedAlignment: Alignment.centerLeft,
                  initiallyExpanded: isOpen,
                  onExpansionChanged: (byl) {
                    setState(() {
                      isOpen = byl;
                    });
                  },
                  titleBuilder: (double animationValue, _, bool isExpaned,
                      toogleFunction) {
                    return GestureDetector(
                      onTap: () {
                        toogleFunction(animated: true);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: OptionButton(
                            style: TextStyle(
                              color: indexName == 0
                                  ? firstParameter.isEmpty
                                      ? kHintTextColor
                                      : kBlackColor
                                  : secondParameter.isEmpty
                                      ? kHintTextColor
                                      : kBlackColor,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            optionName: indexName == 0
                                ? "Выберите способ получения${firstParameter.isEmpty ? '' : ':'} ${firstParameter}"
                                : "Выберите способ оплаты${secondParameter.isEmpty ? '' : ':'} ${secondParameter}"),
                      ),
                    );
                  },
                  content: Container(
                    alignment: Alignment.center,
                    height: 66.h,
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ...List.generate(
                              2,
                              (indexParameters) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (indexName == 0) {
                                      firstParameter =
                                          firstList[indexParameters];
                                    } else {
                                      secondParameter =
                                          secondList[indexParameters];
                                    }
                                  });
                                },
                                behavior: HitTestBehavior.translucent,
                                child: Container(
                                  height: 18.h,
                                  margin: EdgeInsets.only(
                                      bottom: indexParameters == 1 ? 0 : 10.h),
                                  child: Text(
                                    indexName == 0
                                        ? firstList[indexParameters]
                                        : secondList[indexParameters],
                                    style: poppinsRegular12.copyWith(
                                        color: indexName == 0
                                            ? firstList[indexParameters] ==
                                                    firstParameter
                                                ? kBlackColor
                                                : kHintTextColor
                                            : secondList[indexParameters] ==
                                                    secondParameter
                                                ? kBlackColor
                                                : kHintTextColor),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ]),
    );
  }
}
