import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_description.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';

class BodyCart extends StatelessWidget {
  const BodyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CartScreenCubit, CartScreenState>(
          builder: (context, state) {
        if (state is EmptyCartState) {
          return Padding(
            padding: EdgeInsets.only(left: 11.w, right: 11.w, top: 20.h),
            child: Container(
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
                  SectionTitle(text: "В вашей корзине нет товаров"),
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
                      Navigator.pushNamed(context, CatalogScreen.routeName),
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
          );
        }
        if (state is NotEmptyCartState) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 20.h),
                  child: Header(
                    width: 338,
                    text: 'Купон на скидку/Подарочный сертификат...',
                  ),
                ),
                Column(
                  children: List.generate(
                      addedCartProducts.length,
                      (int index) => Padding(
                            padding: EdgeInsets.only(bottom: 10.h),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsProductScreen(
                                                product:
                                                    addedCartProducts[index])));
                              },
                              child: Container(
                                height: 126.h,
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
                                child: Row(children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.h,
                                        left: 10.w,
                                        right: 10.w,
                                        bottom: 10.h),
                                    child: Image.asset(
                                      addedCartProducts[index].images[0],
                                      height: 106.h,
                                      width: 106.w,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 18.h,
                                          right: 10.w,
                                        ),
                                        child: Container(
                                          height: 16.h,
                                          width: 202.w,
                                          child: Text(
                                            addedCartProducts[index].title,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: kBlackColor,
                                              fontFamily: 'OpenSans-Regular',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 56.h, bottom: 20.h),
                                            child: Container(
                                              height: 16.h,
                                              width: 59.w,
                                              child: Row(children: [
                                                SizedBox(
                                                  width: 4.w,
                                                ),
                                                Container(
                                                  height: 16.h,
                                                  width: 16.w,
                                                  color: Colors.blue,
                                                  padding: EdgeInsets.fromLTRB(
                                                      4.w, 7.33.h, 4.w, 7.33.h),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      addedCartProducts.remove(
                                                          addedCartProducts[
                                                              index]);
                                                      BlocProvider.of<
                                                                  CartScreenCubit>(
                                                              context)
                                                          .emit(addedCartProducts
                                                                      .length >
                                                                  0
                                                              ? NotEmptyCartState()
                                                              : EmptyCartState());
                                                    },
                                                    child: SvgPicture.asset(
                                                      "assets/icons/minus.svg",
                                                      color: kBlackColor,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  "1",
                                                  style: TextStyle(
                                                    color: kBlackColor,
                                                    fontFamily:
                                                        'OpenSans-Regular',
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 14.w,
                                                ),
                                                SvgPicture.asset(
                                                  "assets/icons/plus.svg",
                                                ),
                                              ]),
                                            ),
                                          ),
                                          if (addedCartProducts[index]
                                                  .oldPrice !=
                                              0) ...[
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 5.w,
                                                  bottom: 18.h,
                                                  left: 54.w,
                                                  top: 56.h),
                                              child: Text(
                                                "${addedCartProducts[index].price} \₽",
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-SemiBold',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: kBlueColor,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 18.h, top: 56.h),
                                              child: Text(
                                                "${addedCartProducts[index].oldPrice} \₽",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins-Regular',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: kWhiteBlueColor,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                          ] else ...[
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 18.h,
                                                  left: 54.w,
                                                  top: 56.h),
                                              child: Text(
                                                "${addedCartProducts[index].price} \₽",
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-SemiBold',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: kBlueColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ],
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          )),
                )
              ],
            ),
          );
        }
        return Container();
      }),
    );
  }
}
