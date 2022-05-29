import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/presentation/screens/cart/cart_screen.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_cubit.dart';

class CartScreenProvider extends StatelessWidget {
  const CartScreenProvider({Key? key}) : super(key: key);
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartScreenCubit>(
      create: (context) => CartScreenCubit(),
      child: CartScreen(),
    );
  }
}
