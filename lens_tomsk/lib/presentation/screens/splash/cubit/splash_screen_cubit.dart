import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/splash/cubit/splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenLoadingState());

  Future<void> getProducts() async {
    try {
      Timer(Duration(seconds: 5), () {
        emit(SplashScreenLoadedState(products: products));
      });
    } on Exception catch (error) {
      emit(SplashScreenErrorState(errorMsg: 'Sorry, unknown error'));
    }
  }
}