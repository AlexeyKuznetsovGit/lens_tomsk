import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
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
            child: Container(
                alignment: Alignment.center,
                width: 154.w,
                height: 38.h,
                decoration: BoxDecoration(
                  color: state.favouriteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/star-white.svg",
                      width: 10.w,
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text('В избранном',
                        style: openSansSemiBold12.copyWith(color: kWhiteColor))
                  ],
                )),
          );}
          if (state is NotFavouriteState){
            return GestureDetector(
            onTap: () {
              BlocProvider.of<ButtonFavouriteCubit>(context)
                  .makeFavourite(product);
            },
            child:  Container(
                alignment: Alignment.center,
                width: 154.w,
                height: 38.h,
                decoration: BoxDecoration(
                  color: state.notFavouriteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  "assets/icons/star-white.svg",
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