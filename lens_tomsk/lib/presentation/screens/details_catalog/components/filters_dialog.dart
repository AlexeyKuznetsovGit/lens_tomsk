import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/range_slider.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_close_window.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/price_container.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';

void showFiltersDialog(BuildContext context) => showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => Dialog(
          insetPadding: EdgeInsets.only(
            right: 10.w,
            left: 10.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 379.h,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin:
                          EdgeInsets.only(top: 18.h, bottom: 8.h, right: 10.w),
                      height: 20.h,
                      width: 187.w,
                      child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          height: 16.h,
                          width: 56.w,
                          child: Text(
                            'Фильтры',
                            style: TextStyle(
                              color: kBlackColor,
                              fontFamily: 'OpenSans-Regular',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 111.w,
                        ),
                        ButtonCloseWindow(),
                      ]),
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 16.h,
                    width: 31.w,
                    margin: EdgeInsets.only(left: 10.w, bottom: 10.h),
                    alignment: Alignment.center,
                    child: Text(
                      "Цена",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                RangeSliderWidget(),
                SizedBox(height: 20.h,),
                /* Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  height: 16.h,
                  width: 318.w,
                  child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8.w),
                          height: 2.h,
                          width: 302.w,
                          color: kBlueColor,
                        ),
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            color: kBlueColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: kWhiteColor,
                              width: 2,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 302.w),
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            color: kBlueColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: kWhiteColor,
                              width: 2,
                            ),
                          ),
                        )
                      ]),
                ), */
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 16.h,
                    width: 63.w,
                    margin: EdgeInsets.only(left: 10.w, bottom: 10.h),
                    alignment: Alignment.center,
                    child: Text(
                      "Категория",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: ButtonText(
                      buttonColor: kGreyColor,
                      textColor: kHintTextColor,
                      width: 318,
                      text: "Выберите категорию",
                      press: () {}),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 16.h,
                    width: 96.w,
                    margin: EdgeInsets.only(left: 10.w, bottom: 10.h),
                    alignment: Alignment.center,
                    child: Text(
                      "Производитель",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: ButtonText(
                      buttonColor: kGreyColor,
                      textColor: kHintTextColor,
                      width: 318,
                      text: "Выберите производителя",
                      press: () {}),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ButtonText(
                      buttonColor: kGreyColor,
                      textColor: kBlackColor,
                      width: 149,
                      text: "Сбросить",
                      press: () {}),
                  SizedBox(width: 20.w),
                  ButtonText(
                      buttonColor: kBlueColor,
                      textColor: kWhiteColor,
                      width: 149,
                      text: "Показать товары",
                      press: () {})
                ]),
              ],
            ),
          )),
    );
