import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/cart/controllers/cart_controller.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';

class ProductCounter extends StatefulWidget {
  ProductCounter({Key? key, required this.index, required this.listPrice})
      : super(key: key);
  final List listPrice;
  final int index;

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  @override
  void initState() {
    currentDiscount = addedCartProducts[widget.index].oldPrice *
        addedCartProducts[widget.index].selectedCount!;
    for (int i = 0; i < widget.listPrice.length; i++) {
      totalSum = (totalSum + widget.listPrice[i]) as int;
    }
    ctrl.totalPrice.value = totalSum;
    totalSum = 0;
    super.initState();
  }

  CartController ctrl = Get.find(tag: "total");
  int totalSum = 0;

  int currentDiscount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 212.w,
      margin: EdgeInsets.only(bottom: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(addedCartProducts[widget.index].selectedCount! == 1 ||
                      addedCartProducts[widget.index].count == 0
                  ? () {}
                  : () {
                      addedCartProducts[widget.index].selectedCount =
                          addedCartProducts[widget.index].selectedCount! - 1;
                      widget.listPrice[widget.index] = 0;
                      widget.listPrice[widget.index] =
                          addedCartProducts[widget.index].price *
                              addedCartProducts[widget.index].selectedCount!;
                      currentDiscount =
                          addedCartProducts[widget.index].oldPrice *
                              addedCartProducts[widget.index].selectedCount!;

                      for (int i = 0; i < widget.listPrice.length; i++) {
                        totalSum = (totalSum + widget.listPrice[i]) as int;
                      }

                      ctrl.totalPrice.value = totalSum;
                      totalSum = 0;
                    });
            },
            behavior: HitTestBehavior.translucent,
            child: SvgPicture.asset("assets/icons/minus.svg",
                height: 24.h,
                width: 24.w,
                color: addedCartProducts[widget.index].selectedCount == 1 ||
                        addedCartProducts[widget.index].count == 0
                    ? kHintTextColor
                    : kBlackColor),
          ),
          SizedBox(
            width: 12.w,
          ),
          Text(
            addedCartProducts[widget.index].selectedCount.toString(),
            style: poppinsSemiBold12,
          ),
          SizedBox(
            width: 12.w,
          ),
          GestureDetector(
            onTap: () {
              setState(addedCartProducts[widget.index].selectedCount ==
                          addedCartProducts[widget.index].count ||
                      addedCartProducts[widget.index].count == 0
                  ? () {}
                  : () {
                      addedCartProducts[widget.index].selectedCount =
                          addedCartProducts[widget.index].selectedCount! + 1;
                      widget.listPrice[widget.index] = 0;
                      widget.listPrice[widget.index] =
                          addedCartProducts[widget.index].price *
                              addedCartProducts[widget.index].selectedCount!;
                      currentDiscount =
                          addedCartProducts[widget.index].oldPrice *
                              addedCartProducts[widget.index].selectedCount!;
                      for (int i = 0; i < widget.listPrice.length; i++) {
                        totalSum = (totalSum + widget.listPrice[i]) as int;
                      }

                      ctrl.totalPrice.value = totalSum;
                      totalSum = 0;
                    });
            },
            behavior: HitTestBehavior.translucent,
            child: SvgPicture.asset(
              "assets/icons/plus.svg",
              height: 24.h,
              width: 24.w,
              color: addedCartProducts[widget.index].selectedCount ==
                          addedCartProducts[widget.index].count ||
                      addedCartProducts[widget.index].count == 0
                  ? kHintTextColor
                  : kBlackColor,
            ),
          ),
          Spacer(),
          Text("${widget.listPrice[widget.index]} \₽",
              style: poppinsSemiBold12.copyWith(color: kBlueColor)),
          if (addedCartProducts[widget.index].oldPrice != 0) ...[
            SizedBox(
              width: 5.w,
            ),
            Text("${currentDiscount} \₽",
                style: poppinsRegular12.copyWith(
                  color: kWhiteBlueColor,
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 2,
                ))
          ],
          SizedBox(
            width: 10.w,
          )
        ],
      ),
    );
  }
}
