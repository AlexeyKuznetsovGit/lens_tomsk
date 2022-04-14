import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/presentation/screens/splash/cubit/splash_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/splash/splash_screen.dart';

class SplashScreenProvider extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreenProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashScreenCubit>(
      create: (context) => SplashScreenCubit(),
      child: SplashScreen(),
    );
  }
}