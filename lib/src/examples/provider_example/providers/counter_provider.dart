// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/stores/counter_store.dart';


class CounterProvider with ChangeNotifier {
  final CounterStore store;

  CounterProvider({
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
