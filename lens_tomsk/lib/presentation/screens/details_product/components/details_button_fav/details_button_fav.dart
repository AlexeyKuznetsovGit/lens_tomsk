import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_button_fav/components/body_btn_details_fav.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/cubit/button_favourite_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/cubit/button_favourite_state.dart';

class DetailsButtonFav extends StatelessWidget {
  const DetailsButtonFav({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonFavouriteCubit, ButtonFavouriteState>(
      builder: (context, state) {
        if (state is FavouriteState) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<ButtonFavouriteCubit>(context)
                  .makeNotFavourite(product);
            },
            child: BodyBtnDetailsFav(color: state.favouriteColor),
          );}
          if (state is NotFavouriteState){
            return GestureDetector(
            onTap: () {
              BlocProvider.of<ButtonFavouriteCubit>(context)
                  .makeFavourite(product);
            },
            child: BodyBtnDetailsFav(color: state.notFavouriteColor),
          );
          }
        return Container();
      },
    );
  }
}