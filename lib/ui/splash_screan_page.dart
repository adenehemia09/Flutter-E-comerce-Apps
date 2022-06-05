import 'dart:async';

import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({Key? key}) : super(key: key);

  @override
  _SplashScreanState createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(
        context,
        '/sign-in',
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon_splash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
