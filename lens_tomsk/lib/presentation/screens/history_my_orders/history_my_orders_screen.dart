import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_back.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_description.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class HistoryMyOrdersScreen extends StatelessWidget {
  const HistoryMyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
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
                    "История моих заказов",
                    style: poppinsRegular12,
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 338.w,
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
            child: Row(children: [
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Накопленные бонусы",
                style: poppinsRegular12,
              ),
              Spacer(),
              Text(
                "0 ₽",
                style: poppinsSemiBold12.copyWith(color: kBlueColor),
              ),
              SizedBox(
                width: 10.w,
              )
            ]),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 178.h,
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
                SectionTitle(text: "У вас еще нет купленных товаров"),
                SizedBox(
                  height: 20.h,
                ),
                SectionDescription(text: "Просмотрите каталог для поиска"),
                SectionDescription(text: "необходимого Вам товара"),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () => {
                    Get.to(() => const CatalogScreen(),
                        transition: tr.Transition.cupertino)
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 318.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Перейти в каталог",
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
        ]),
      ),
      
    );
  }
}
