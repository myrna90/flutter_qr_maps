import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;
    //esto es lo que va a notificar a todos los widgets del cambio que sucede en selectedMenuOpt
    notifyListeners();
  }
}
