//import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Service /*with ChangeNotifier */ {
  final String id;
  final String name;
  //final String description;
  //final double price;
  final Icon icon;
  //final Function? function;
  final String function;
  //bool isFavorite;

  Service({
    required this.id,
    required this.name,
    //required this.description,
    //required this.price,
    required this.icon,
    required this.function,
    // this.isFavorite = false,
  });
/*
  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
  */
}
