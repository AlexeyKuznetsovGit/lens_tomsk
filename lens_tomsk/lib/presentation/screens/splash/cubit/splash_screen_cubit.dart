import 'dart:async';

import 'package:eticon_api/eticon_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/splash/cubit/splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenLoadingState());

  /* Future<void> getProducts() async {
    try {
      List<Product> product = [];
      Map<String, dynamic> response = await Api.get(
          method: 'products/');
      for(var product in response['products']){
        product.add(Product.fromJson(product));
      }
      emit(SplashScreenLoadedState(products: product));
    } on APIException catch (error) {
      if (error.code == 0) {
        emit(SplashScreenErrorState(errorMsg: 'No Internet connection'));
      } else {
        emit(SplashScreenErrorState(errorMsg: 'Ups...'));
      }
    }
  } */
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