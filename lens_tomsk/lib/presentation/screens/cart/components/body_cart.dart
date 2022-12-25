import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_list_products.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/empty_cart.dart';
import 'package:lens_tomsk/presentation/screens/cart/controllers/cart_controller.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';
import 'package:lens_tomsk/presentation/screens/ordering_screen/ordering_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

class BodyCart extends StatelessWidget {
  BodyCart({
    Key? key,
  }) : super(key: key);
  CartController ctrl = Get.put(CartController(), tag: "total");
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartScreenCubit, CartScreenState>(
        builder: (context, state) {
      if (state is EmptyCartState) {
        ctrl.totalPrice.value = 0;
        return Padding(
          padding: EdgeInsets.only(left: 11.w, right: 11.w, top: 20.h),
          child: EmptyCart(),
        );
      }
      if (state is NotEmptyCartState) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 10.h),
              child: Header(
                width: 338,
                text: 'Купон на скидку/Подарочный сертификат...',
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: CartListProducts(),
              ),
            ),
            Container(
              height: 96.h,
              width: 360.w,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 5,
                        color: kBlueColor.withOpacity(0.1))
                  ]),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.h,
                    ),
                    width: 360.w,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 21.w,
                        ),
                        Text(
                          "Итого:",
                          style: openSansSemiBold12,
                        ),
                        Spacer(),
                        Obx(
                          () => Text(
                            "${ctrl.totalPrice.value} ₽",
                            style: poppinsSemiBold12,
                          ),
                        ),
                        SizedBox(
                          width: 21.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ButtonText(
                    width: 318,
                    text: 'Оформить заказ',
                    textColor: kWhiteColor,
                    buttonColor: kBlueColor,
                    press: () {
                      Get.to(() =>
                          OrderingScreen(totalPrice: ctrl.totalPrice.value));
                    },
                  )
                ],
              ),
            )
          ],
        );
      }
      return Container();
    });
  }
}
