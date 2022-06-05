import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';

class ProductCounter extends StatelessWidget {
  const ProductCounter({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 56.h, bottom: 18.h),
      child: Container(
        height: 18.h,
        width: 63.w,
        child: Row(children: [
          Container(
            height: 18.h,
            width: 18.w,
            padding: EdgeInsets.fromLTRB(4.5.w, 8.25.h, 4.5.w, 8.25.h),
            child: GestureDetector(
              onTap: () {
                addedCartProducts.remove(addedCartProducts[index]);
                BlocProvider.of<CartScreenCubit>(context).emit(
                    addedCartProducts.length > 0
                        ? NotEmptyCartState()
                        : EmptyCartState());
              },
              child: SvgPicture.asset(
                "assets/icons/minus.svg",
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            width: 7.w,
            child: Text(
              "1",
              style: TextStyle(
                color: kBlackColor,
                fontFamily: 'OpenSans-Regular',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 18.h,
            width: 18.w,
            padding: EdgeInsets.fromLTRB(4.5.w, 4.5.h, 4.5.w, 4.5.h),
            child: SvgPicture.asset(
              "assets/icons/plus.svg",
            ),
          ),
        ]),
      ),
    );
  }
}
