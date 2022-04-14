import 'package:lens_tomsk/domain/models/Product.dart';

abstract class HomeScreenState {}

class HomeScreenLoadingState extends HomeScreenState {}

class HomeScreenLoadedState extends HomeScreenState {
  List<Product> products;

  HomeScreenLoadedState({required this.products});
}

class HomeScreenErrorState extends HomeScreenState {
  final String errorMsg;

  HomeScreenErrorState({required this.errorMsg});
}