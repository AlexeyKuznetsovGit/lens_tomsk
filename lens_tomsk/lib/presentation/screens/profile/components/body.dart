import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/profile_editing/profile_editing.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_description.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class Body extends StatelessWidget {
  const Body(
      {Key? key,
      required this.name,
      required this.email,
      required this.password})
      : super(key: key);
  final String name;
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 11.w, right: 11.w),
            child: Container(
              height: 87.h,
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
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: SectionTitle(text: name),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 49.h),
                    child: SectionDescription(text: email),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 281.w, top: 25.h),
                    child: GestureDetector(
                      onTap: () => {
                        Get.to(
                            () => ProfileEditing(
                                name: name, email: email, password: password),
                            transition: tr.Transition.cupertino)
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 37.h,
                          //padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: kBackGroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/pencil.svg",
                            width: 17.w,
                            height: 17.h,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 11.w, right: 11.w),
            child: Container(
              height: 78.h,
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
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 38.h,
                      width: 318.w,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "История моих заказов",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'OpenSans-Regular',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 11.w, right: 11.w),
            child: Container(
              height: 78.h,
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
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 38.h,
                      width: 318.w,
                      decoration: BoxDecoration(
                        color: kGreyColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Выйти из аккаунта",
                        style: TextStyle(
                            color: kBlackColor,
                            fontFamily: 'OpenSans-Regular',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
