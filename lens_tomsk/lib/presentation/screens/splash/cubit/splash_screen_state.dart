import 'package:lens_tomsk/domain/models/Product.dart';

abstract class SplashScreenState {}

class SplashScreenLoadingState extends SplashScreenState {}

class SplashScreenLoadedState extends SplashScreenState {
  /* final List<Product> products; */

  SplashScreenLoadedState(/* {required this.products} */);
}

class SplashScreenErrorState extends SplashScreenState {
  final String errorMsg;

  SplashScreenErrorState({required this.errorMsg});
}