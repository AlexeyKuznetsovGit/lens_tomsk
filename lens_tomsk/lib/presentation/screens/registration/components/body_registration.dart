import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/registration/components/registration_input_fields.dart';
import 'package:lens_tomsk/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class BodyRegistration extends StatelessWidget {
  const BodyRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 10.h),
              child: RegistrationInputFields(),
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
                      "Уже зарегистрированы?",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ButtonText(text: "Войти", buttonColor: kGreyColor, press: (){Get.to(() => const SignInScreen(),  transition: tr.Transition.cupertino);}, textColor: kBlackColor, width: 318)
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

