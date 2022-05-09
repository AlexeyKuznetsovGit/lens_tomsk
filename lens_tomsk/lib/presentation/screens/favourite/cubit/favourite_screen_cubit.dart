import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/data/repository/Favourite_product.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_state.dart';

class FavouriteScreenCubit extends Cubit<FavouriteScreenState> {
  FavouriteScreenCubit() : super(favouriteProducts.isNotEmpty ? NotEmptyFavouriteState() : EmptyFavouriteState());

 void rebuildGredVievFavourites(){
   emit(NotEmptyFavouriteState());
 }
}