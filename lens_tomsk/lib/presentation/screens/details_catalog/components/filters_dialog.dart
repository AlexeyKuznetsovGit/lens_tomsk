import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/range_slider.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/option_button.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_close_window.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';

import '../../../../data/repository/Category_products.dart';
import '../../../../domain/models/Product.dart';

void showFilter(String categoryName) {
  Get.dialog(
      FilterWidget(
        categoryName: categoryName,
      ),
      barrierDismissible: true);
}

class FilterWidget extends StatefulWidget {
  FilterWidget({Key? key, required this.categoryName}) : super(key: key);
  final String categoryName;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<String> firstList = ['Однодневные линзы', 'Двухнедельные линзы', 'Линзы на месяц'];
  List<String> secondList = ['Alcon - Ciba Vision', 'Johnson&Johnson'];
  String firstParameter = '';
  String secondParameter = '';
  bool isOpen = false;
  int len = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(onTap: () {
          Get.back();
        }),
        Material(
          color: Colors.black.withOpacity(0.4),
          child: Container(
            width: 338.w,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    ButtonCloseWindow(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Фильтры', style: openSansSemiBold12),
                      ],
                    ),
                  ],
                ),
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
                ...List.generate(
                  2,
                  (indexName) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, bottom: 4.h, top: 20.h),
                        child: Text(
                          indexName == 0 ? 'Категория' : "Производитель",
                          style: openSansRegular12.copyWith(color: kHintTextColor),
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
                          titleBuilder: (double animationValue, _, bool isExpaned, toogleFunction) {
                            return GestureDetector(
                              onTap: () {
                                toogleFunction(animated: true);
                              },
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
                                      ? firstParameter.isEmpty
                                          ? 'Выберите категорию'
                                          : firstParameter
                                      : secondParameter.isEmpty
                                          ? 'Выберите производителя'
                                          : secondParameter),
                            );
                          },
                          content: Container(
                            alignment: Alignment.center,
                            height: indexName == 0 ? 75.h : 66.h,
                            margin: EdgeInsets.only(top: indexName == 0 ? 10.h : 0),
                            child: SingleChildScrollView(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ...List.generate(
                                      len = indexName == 0 ? 3 : 2,
                                      (indexParameters) => GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (indexName == 0) {
                                              firstParameter = firstList[indexParameters];
                                            } else {
                                              secondParameter = secondList[indexParameters];
                                            }
                                          });
                                        },
                                        behavior: HitTestBehavior.translucent,
                                        child: Container(
                                          height: 18.h,
                                          margin: EdgeInsets.only(bottom: indexParameters == len - 1 ? 0 : 10.h),
                                          child: Text(
                                            indexName == 0 ? firstList[indexParameters] : secondList[indexParameters],
                                            style: poppinsRegular12.copyWith(
                                                color: indexName == 0
                                                    ? firstList[indexParameters] == firstParameter
                                                        ? kBlueColor
                                                        : kHintTextColor
                                                    : secondList[indexParameters] == secondParameter
                                                        ? kBlueColor
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
                  height: 20.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ButtonText(
                      buttonColor: kGreyColor,
                      textColor: kBlackColor,
                      width: 149,
                      text: "Сбросить",
                      press: () {
                        setState(() {
                          categoryProducts = [];
                          for (int index = 0; index < products.length; index++) {
                            if (products[index].category == widget.categoryName) {
                              categoryProducts.add(products[index]);
                            }
                          }
                        });
                      }),
                  SizedBox(width: 20.w),
                  ButtonText(
                      buttonColor: kBlueColor,
                      textColor: kWhiteColor,
                      width: 149,
                      text: "Показать товары",
                      press: () {
                        setState(() {
                          categoryProducts = [];
                          for (int index = 0; index < products.length; index++) {
                            if (products[index].category == widget.categoryName) {
                              categoryProducts.add(products[index]);
                            }
                          }
                        });
                      })
                ]),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
