import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lens_tomsk/data/repository/Favourite_product.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_state.dart';

class ButtonDelete extends StatelessWidget {
  const ButtonDelete({
    required this.product,
    Key? key,
  }) : super(key: key);
  final Product product;

 @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteScreenCubit, FavouriteScreenState>(
            builder: (context, state) { return GestureDetector(
      onTap: () {
        favouriteProducts.remove(product);
        BlocProvider.of<FavouriteScreenCubit>(context).emit(favouriteProducts.length > 0 ? NotEmptyFavouriteState() : EmptyFavouriteState());
      },
      child: Container(
        alignment: Alignment.center,
        width: 28.w,
        height: 28.h,
        decoration: BoxDecoration(
          color: kBlueColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          "assets/icons/delete-item.svg",
          
        )),
    ); });
  }
   /* @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         favouriteProducts.remove(product);

 Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => FavouriteScreenProvider()),
  (Route<dynamic> route) => false,
); 
      },
      child: Container(
        alignment: Alignment.center,
        width: 28.w,
        height: 28.h,
        decoration: BoxDecoration(
          color: kBlueColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          "assets/icons/delete-item.svg",
          
        )),
    );
  } */ 
}
