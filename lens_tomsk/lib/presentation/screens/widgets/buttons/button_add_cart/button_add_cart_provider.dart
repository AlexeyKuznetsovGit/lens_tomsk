import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/button_add_cart.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_cubit.dart';

class ButtonAddCartProvider extends StatelessWidget {
  const ButtonAddCartProvider({Key? key,
  required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ButtonAddCartCubit>(
      create: (context) => ButtonAddCartCubit(product: product),
      child: ButtonAddCart(product: product,),
    ); 
  }
}