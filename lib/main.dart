import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './view/products_menu/routes/products_menu_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Averia Test',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: false,
            titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF2F54EB)),
                shape: MaterialStateProperty.all<OutlinedBorder>(BeveledRectangleBorder())
          )),
          primaryColor: Colors.black,
          accentColor: Color(0xFF2F54EB),
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark,
          textTheme: TextTheme(
            subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        initialRoute: ProductsMenuRoute.route,
        routes: {
          ProductsMenuRoute.route: (context) => ProductsMenuRoute(),
        },
      ),
    );
  }
}
