// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'counter_store.dart';

class CounterController with ChangeNotifier {
  CounterStore store;

  CounterController({
    required this.store,
  });
  void increment() {
    store.number++;
    notifyListeners();
  }

  void decrement() {
    store.number--;
    notifyListeners();
  }
}
