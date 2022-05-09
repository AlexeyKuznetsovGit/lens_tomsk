import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/button_favourite.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/cubit/button_favourite_cubit.dart';

class ButtonFavouriteProvider extends StatelessWidget {
  const ButtonFavouriteProvider({Key? key,
  required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ButtonFavouriteCubit>(
      create: (context) => ButtonFavouriteCubit(product: product),
      child: ButtonFavourite(product: product,),
    ); 
 
  }
}