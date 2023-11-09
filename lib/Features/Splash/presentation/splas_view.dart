import 'package:flutter/material.dart';
import 'package:fruits_market/Features/Splash/presentation/widgets/splash_body.dat.dart';

import '../../../core/constants.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
     body: SplashBody(),
    );
  }
}
