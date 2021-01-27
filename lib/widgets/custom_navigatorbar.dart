import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_qr_maps/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    //este currentIndex nos ayuda a visualizar cual elemento esta seleccionando el usuario
    //uiProvider es un gestor de estado nos ayuda a hacer los cambios de estado.
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      //como es set debe llamarse la i de esta forma ya que no es un metodo
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration),
            //
            label: 'Direcciones'),
      ],
    );
  }
}
