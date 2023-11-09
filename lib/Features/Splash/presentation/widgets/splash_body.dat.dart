import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruits_market/Features/on%20Boarding/presentation/on_board_view.dart';
import 'package:fruits_market/core/utils/size_config.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>with SingleTickerProviderStateMixin {
 AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
    animationController =AnimationController(
        vsync: this,duration: Duration(milliseconds: 600)
    );
    fadingAnimation=Tween<double>(
     begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
  }
 startTime() async {
   var duration = Duration(seconds: 3);
   return new Timer(duration, route);
 }
 route(){
   Navigator.pushReplacement(context, MaterialPageRoute(
       builder: (context) => OnBoardingView()
   ));
 }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
         FadeTransition(
           opacity: fadingAnimation!,
           child: Text(
                  'Fruit Market',
                  style: TextStyle(
                    fontSize: 51,
                    fontFamily: 'poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
         ),


          Image.asset(
              'assets/images/splash_view_image.png'
          ),
        ],
      ),
    );
  }

}
