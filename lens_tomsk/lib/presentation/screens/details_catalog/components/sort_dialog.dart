import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_close_window.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/option_sort.dart';

void showSortDialog(BuildContext context) => showDialog(
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
            height: 354.h,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin:
                          EdgeInsets.only(top: 18.h, bottom: 18.h, right: 10.w),
                      height: 20.h,
                      width: 195.w,
                      child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          height: 16.h,
                          width: 73.w,
                          child: Text(
                            'Сортировка',
                            style: TextStyle(
                              color: kBlackColor,
                              fontFamily: 'OpenSans-Regular',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 102.w,
                        ),
                        ButtonCloseWindow(),
                      ]),
                    )),
                /* Stack(alignment: AlignmentDirectional.topEnd, children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18.h, right: 10.w),
                    child: ButtonCloseWindow(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                    child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Сортировка',
                                style: TextStyle(
                                  color: kBlackColor,
                                  fontFamily: 'OpenSans-Regular',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                  ),
                 
                ]), */
                OptionSort(
                  text: "По умолчанию",
                ),
                OptionSort(
                  text: "По имени (А - Я)",
                ),
                OptionSort(
                  text: "По имени (Я - А)",
                ),
                OptionSort(
                  text: "Сначала дешевые",
                ),
                OptionSort(
                  text: "Сначала дорогие",
                ),
                OptionSort(
                  text: "Товары со скидкой",
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          )),
    );
