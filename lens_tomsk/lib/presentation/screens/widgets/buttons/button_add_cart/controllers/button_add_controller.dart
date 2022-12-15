import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ButtonAddController extends GetxController {
  RxList<SelectOption> selectedOptions = <SelectOption>[].obs;
}

class SelectOption {
  RxString name = ''.obs;
  RxString parameter = ''.obs;
}
