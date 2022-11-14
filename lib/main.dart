import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart_app/login_screen.dart';
import 'package:flutter_shoppingcart_app/my_cart.dart';
import 'package:flutter_shoppingcart_app/my_catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginScreen(),
        "/cart": (context) => MyCart(
              list: [],
            ),
        "/catalog": (context) => MyCatalog(),
      },
    );
  }
}
