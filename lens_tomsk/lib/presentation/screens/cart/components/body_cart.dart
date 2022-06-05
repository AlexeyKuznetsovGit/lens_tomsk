import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/cart_list_products.dart';
import 'package:lens_tomsk/presentation/screens/cart/components/empty_cart.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

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
            child: EmptyCart(),
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
                CartListProducts(),
                /* Center(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h),
                height: 106.h,
                width: 338.w,
                color: Colors.blue,
              ),
            ),
          ), */
              ],
            ),
          );
        }
        return Container();
      }),
    );
  }
}
