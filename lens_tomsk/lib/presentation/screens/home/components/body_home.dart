import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/home/components/product_list.dart';
import 'package:lens_tomsk/presentation/screens/home/cubit/home_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/home/cubit/home_screen_state.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
        if (state is HomeScreenLoadingState) {
          BlocProvider.of<HomeScreenCubit>(context).getProducts();
          return Center(
              child: CircularProgressIndicator(
            color: kBlueColor,
          ));
        }
        if (state is HomeScreenLoadedState) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left:11.w, top: 20.h, right: 11.w, bottom: 10.h),
                child: Header(
                  width: 338,
                  text: 'Поиск по названию...',
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ProductLists(),
                ),
              ),
            ],
          );
        }
        if (state is HomeScreenErrorState) {
          return Center(
            child: Text(state.errorMsg),
          );
        }
        return Container();
      }),
    );
  }
}
