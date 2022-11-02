import 'package:get/state_manager.dart';

class NavigationController extends GetxController{
  NavigationController({int index = 0}){
    this.index.value = index;
  }
  RxInt index = 0.obs;
}