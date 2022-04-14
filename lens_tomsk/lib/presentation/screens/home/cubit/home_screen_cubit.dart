import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/home/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenLoadingState());

  Future<void> getProducts() async {
    try {
      Timer(Duration(seconds: 5), () {
       emit(HomeScreenLoadedState(products: products));
      });
    } on Exception catch (error) {
      emit(HomeScreenErrorState(errorMsg: 'Sorry, unknown error'));
    }
  }
}
