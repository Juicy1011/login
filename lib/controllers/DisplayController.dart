import 'package:get/get.dart';

class DisplayController extends GetxController {
  var errorMessage = ''.obs;

  void setErrorMessage(String message) {
    errorMessage.value = message;
  }
}
