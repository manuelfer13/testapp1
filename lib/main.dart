import 'package:flutter/material.dart';

import 'package:testapp/router/app_routes.dart';
import 'package:testapp/screens/screens.dart';

void main() => runApp(MiApp());

final Hola = "aaa";

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Manuel App",
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        // onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.indigo,
            appBarTheme: AppBarTheme(color: Colors.indigo)));
  }
}


/* 
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Manuel App Top"),
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
        body: lv_2());
  }
}
 */