import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/custom_snack_bar.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_close_window.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';

void showBuyDialog(BuildContext context, Product product) => showDialog(
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
          height: 267.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin:
                          EdgeInsets.only(top: 18.h, bottom: 18.h, right: 10.w),
                      height: 20.h,
                      width: 213.w,       
                      child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          height: 16.h,
                          width: 109.w,
                          child: Text(
                            'Доступные опции',
                            style: TextStyle(
                              color: kBlackColor,
                              fontFamily: 'OpenSans-Regular',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 84.w,),
                        ButtonCloseWindow(),
                      ]),
                    )),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 318.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      color: kGreyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Выберите кривизну",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'Poppins-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  )),
              SizedBox(height: 10.h),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 318.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      color: kGreyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Выберите рефракцию",
                      style: TextStyle(
                        color: kHintTextColor,
                        fontFamily: 'Poppins-Regular',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  )),
              SizedBox(height: 10.h),
              Text(
                "Количество товара",
                style: TextStyle(
                  color: kHintTextColor,
                  fontFamily: 'Poppins-Regular',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5.h),
              Container(
                width: 79.w,
                height: 24.h,
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset("assets/icons/minus.svg",
                        color: kHintTextColor),
                    SizedBox(
                      width: 24.w,
                    ),
                    SectionTitle(
                      text: "1",
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    SvgPicture.asset(
                      "assets/icons/plus.svg",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                  child: Container(
                    width: 318.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Добавить товар в корзину",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontFamily: 'OpenSans-Regular',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  onTap: () => {
                        BlocProvider.of<ButtonAddCartCubit>(context)
                            .addToCart(product),
                        Navigator.of(context).pop(),
                          //AddCartSnackBar()
                          showCustomSnackBar(context)
                      }),
            ],
          ),
        ),
      ),
    );
