import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lens_tomsk/data/repository/Added_cart_products.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_state.dart';

class ButtonAddCartCubit extends Cubit<ButtonAddCartState> {
  ButtonAddCartCubit({required this.product})
      : super(addedCartProducts.contains(product)
            ? AddState(addColor: kWhiteBlueColor)
            : NotAddState(notAddColor: kBlueColor));
  final Product product;

  void addToCart(product) {
    addedCartProducts.add(product);
    emit(AddState(addColor: kWhiteBlueColor));
  }

  void removeFromCart(product) {
    addedCartProducts.remove(product);
    emit(NotAddState(notAddColor: kBlueColor));
  }

}
