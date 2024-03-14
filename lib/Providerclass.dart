

import 'package:flutter/cupertino.dart';
import 'listProduct.dart';

class Providerclass extends ChangeNotifier{
  List<Product> item=[];
  List<Product> get Items=> item;

  void add(Product Items){
    item.add(Items);
    notifyListeners();
  }
  void remove(Product Items){
    item.remove(Items);
    notifyListeners();
  }
}