import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;

  increment() {
    counter.value++;
    update();
  }

  decrement() {
    counter.value--;
    update();
  }
}
