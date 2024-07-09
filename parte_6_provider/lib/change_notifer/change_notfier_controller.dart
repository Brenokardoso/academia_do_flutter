import 'package:flutter/material.dart';

class ProviderNotifyController<double> extends ChangeNotifier {
  String name = "Breno X";
  String urlImage = "";
  String bornDate = "06/04/2002";

  void changeName(String newname) {
    name = newname;
    notifyListeners();
  }
}
