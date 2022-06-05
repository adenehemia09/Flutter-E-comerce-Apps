import 'package:ecommerce_apps/ui/cart_page.dart';
import 'package:ecommerce_apps/ui/checkout_page.dart';
import 'package:ecommerce_apps/ui/checkout_succses.dart';
import 'package:ecommerce_apps/ui/detail_chat.dart';
import 'package:ecommerce_apps/backend/main_page.dart';
import 'package:ecommerce_apps/ui/edit_profile_page.dart';
import 'package:ecommerce_apps/ui/product_page.dart';
import 'package:ecommerce_apps/ui/sign_in.dart';
import 'package:ecommerce_apps/ui/sign_up.dart';
import 'package:ecommerce_apps/ui/splash_screan_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScrean(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChat(),
        '/edit-profile': (context) => EditProfile(),
        '/product': (context) => ProductPage(),
        '/cart-page': (context) => CartPage(),
        '/checkout-page': (context) => CheckoutPage(),
        '/checkout-succes': (context) => CheckoutSuccses(),
      },
    );
  }
}
