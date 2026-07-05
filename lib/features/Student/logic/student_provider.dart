

import 'package:flutter/material.dart';


class StudentProvider extends ChangeNotifier {
  final List<String> itemscheck = [];
  final List<String> itemscancel = [];

  
  void addItemcheck(String item) {
    itemscheck.add(item);
    notifyListeners();
  }

  void removeItemcheck(String item) {
    itemscheck.remove(item);
    notifyListeners();
  }

  void addItemcancel(String item) {
    itemscancel.add(item);
    notifyListeners();
  } 
  void removeItemcancel(String item) {
    itemscancel.remove(item);
    notifyListeners();
  }
  
}
