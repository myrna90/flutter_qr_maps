import 'package:flutter/material.dart';
import 'package:flutter_qr_maps/pages/home_page.dart';
import 'package:flutter_qr_maps/pages/mapa_page.dart';
import 'package:flutter_qr_maps/providers/scan_list_provider.dart';
import 'package:flutter_qr_maps/providers/ui_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //esto sirve para decirle a la app ve y busca en el árbol de widget y trae UiProvider,
    //se pone multiProvider porque se va a necesitar varios providers.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
        ChangeNotifierProvider(create: (_) => new ScanListProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: '/home',
        routes: {
          '/home': (_) => HomePage(),
          '/mapa': (_) => MapaPage(),
        },
        //esto es un tema para hacer cambios en el diseño
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.deepPurple)),
      ),
    );
  }
}
