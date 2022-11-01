import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/buy_dialog.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_state.dart';

class DetailsButtonCart extends StatelessWidget {
  const DetailsButtonCart({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonAddCartCubit, ButtonAddCartState>(
      builder: (context, state) {
        if (state is AddState) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<ButtonAddCartCubit>(context)
                  .removeFromCart(product);
            },
            child: Container(
                alignment: Alignment.center,
                width: 154.w,
                height: 38.h,
                decoration: BoxDecoration(
                  color: state.addColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/cart-white.svg",
                      width: 10.w,
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text('В корзине',
                        style: openSansSemiBold12.copyWith(color: kWhiteColor))
                  ],
                )),
          );
        }
        if (state is NotAddState) {
          return GestureDetector(
            onTap: () {
              showBuyDialog(context, product);
              /* BlocProvider.of<ButtonAddCartCubit>(context)
                  .makeFavourite(product); */
            },
            child: Container(
                alignment: Alignment.center,
                width: 154.w,
                height: 38.h,
                decoration: BoxDecoration(
                  color: state.notAddColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  "assets/icons/cart-white.svg",
                  width: 10.w,
                  height: 10.h,
                )),
          );
        }
        return Container();
      },
    );
  }
}
