import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/components/color_button.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/cubit/button_favourite_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/cubit/button_favourite_state.dart';

class ButtonFavourite extends StatelessWidget {
  const ButtonFavourite({
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
            child: ColorButton(color: state.favouriteColor),
          );}
          if (state is NotFavouriteState){
            return GestureDetector(
            onTap: () {
              BlocProvider.of<ButtonFavouriteCubit>(context)
                  .makeFavourite(product);
            },
            child: ColorButton(color: state.notFavouriteColor),
          );
          }
        return Container();
      },
    );
    /* GestureDetector(
      onTap: () => {
       
      },
      child: Container(
              alignment: Alignment.center,
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(
                color: _pressButton ? kWhiteBlueColor : kBlueColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                "assets/icons/star-white.svg",
                width: 10.w,
                height: 10.h,
              ))
    ); */
  }
}
