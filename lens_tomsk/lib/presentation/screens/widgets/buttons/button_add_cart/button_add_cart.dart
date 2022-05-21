import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/body_button_add_cart.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/buy_dialog.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_state.dart';

class ButtonAddCart extends StatelessWidget {
  const ButtonAddCart({
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
            child: BodyButtonAddCart(color: state.addColor),
          );}
          if (state is NotAddState){
            return GestureDetector(
            onTap: () {
              showBuyDialog(context, product);
              /* BlocProvider.of<ButtonAddCartCubit>(context)
                  .makeFavourite(product); */
            },
            child: BodyButtonAddCart(color: state.notAddColor),
          );
          }
        return Container();
      },
    );
  }
  
}