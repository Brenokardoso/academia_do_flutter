import 'package:flutter/material.dart';

class ProviderNotifyController<double> extends ChangeNotifier {
  String name = "Breno X";
  String urlImage = "https://i.redd.it/4kbg7ionk63a1.jpg";
  String bornDate = "06/04/2002";

  changeName(String newname) {
    name = newname;
    notifyListeners();
  }
}
