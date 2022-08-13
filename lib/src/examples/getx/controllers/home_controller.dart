import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<String> items = <String>[].obs;
  RxInt counter = 0.obs;

  increment() {
    counter.value++;
    update();
  }

  decrement() {
    counter.value--;
    update();
  }

  addItem(String item) {
    items.add(item);
    update();
  }

  removeItem(String item) {
    items.remove(item);
    update();
  }
}
