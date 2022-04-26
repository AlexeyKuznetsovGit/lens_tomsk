import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/data/repository/Favourite_product.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/home/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(initHomeState());

  

}
