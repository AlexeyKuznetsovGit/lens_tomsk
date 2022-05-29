import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_button_fav/details_button_fav.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/cubit/button_favourite_cubit.dart';

class DetailsButtonFavProvider extends StatelessWidget {
  const DetailsButtonFavProvider({Key? key,
  required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ButtonFavouriteCubit>(
      create: (context) => ButtonFavouriteCubit(product: product),
      child: DetailsButtonFav(product: product,),
    ); 
 
  }
}