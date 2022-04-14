import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/presentation/screens/home/cubit/home_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/home/home_screen.dart';

class HomeScreenProvider extends StatelessWidget {
  const HomeScreenProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (context) => HomeScreenCubit(),
      child: HomeScreen(),
    );
  }
}