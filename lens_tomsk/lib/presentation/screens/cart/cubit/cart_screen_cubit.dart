import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/presentation/screens/cart/cubit/cart_screen_state.dart';

class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit() : super(addedCartProducts.isNotEmpty ? NotEmptyCartState() : EmptyCartState());

}