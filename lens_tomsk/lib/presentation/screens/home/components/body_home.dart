import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/screens/home/components/product_list.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 20.h),
              child: Header(width: 338, text: 'Поиск по названию...',),
            ),
            ProductLists(),
          ],
        ),
      ),
    );
  }
} 

/* import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/screens/home/components/product_list.dart';
import 'package:lens_tomsk/presentation/screens/splash/cubit/splash_screen_state.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

import '../../splash/cubit/splash_screen_cubit.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 20.h),
              child: Header(width: 338,),
            ),
             BlocBuilder<SplashScreenCubit, SplashScreenState>(
                  builder: (context, state) {
                    if (state is SplashScreenLoadedState){
                      return  ProductLists(products: state.products);
                    }
                    return Container();
                  }),
          ],
        ),
      ),
    );
  }
} */