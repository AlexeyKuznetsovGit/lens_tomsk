import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/screens/home/home_screen.dart';
import 'package:lens_tomsk/presentation/screens/splash/cubit/splash_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/splash/cubit/splash_screen_state.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class BodySplash extends StatelessWidget {
  const BodySplash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/icons/logo.svg",
                )),
            SizedBox(height: 20.h),
            BlocBuilder<SplashScreenCubit, SplashScreenState>(
                builder: (context, state) {
              if (state is SplashScreenLoadingState) {
                BlocProvider.of<SplashScreenCubit>(context).getProducts();
/*                   return Center(
                  child: CircularProgressIndicator(),
                ); */
              }
              if (state is SplashScreenLoadedState) {
                Future.delayed(Duration.zero, () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                });
              }
              if (state is SplashScreenErrorState) {
                return Center(
                  child: Text(state.errorMsg),
                );
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}
