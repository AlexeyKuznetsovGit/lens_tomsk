import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';

class ButtonDeleteItem extends StatelessWidget {
  const ButtonDeleteItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){addedCartProducts.remove(addedCartProducts[index]);
      BlocProvider.of<CartScreenCubit>(context).emit(
          addedCartProducts.length > 0
              ? NotEmptyCartState()
              : EmptyCartState());},
      child: SvgPicture.asset("assets/icons/krest.svg"),
    );
  }
}
