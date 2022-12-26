import 'package:get/state_manager.dart';

class MainScreenController extends GetxController{
  MainScreenController({int index = 0}){
    this.index.value = index;
  }
  RxInt index = 0.obs;
}