import 'package:flutter/material.dart';
import 'package:fruits_market/Features/Splash/presentation/splas_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home: SplashView(),
    );
  }
}
