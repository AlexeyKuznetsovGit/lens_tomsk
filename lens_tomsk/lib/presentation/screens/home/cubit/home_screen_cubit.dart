import 'package:eticon_api/eticon_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/home/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenLoadedState());

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
      Map<String, dynamic> response =
          await Api.get(method: 'products/', testMode: true);
          emit(HomeScreenLoadedState());
    } on APIException catch (error) {
      emit(HomeScreenErrorState(errorMsg: "${error.code}"));
    }
  } 
}