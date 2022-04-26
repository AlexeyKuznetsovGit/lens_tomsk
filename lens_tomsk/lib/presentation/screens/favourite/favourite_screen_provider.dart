import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/favourite/favourite_screen.dart';

class FavouriteScreenProvider extends StatelessWidget {
  const FavouriteScreenProvider({Key? key}) : super(key: key);
  static String routeName = "/favourite";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavouriteScreenCubit>(
      create: (context) => FavouriteScreenCubit(),
      child: FavouriteScreen(),
    );
  }
}
