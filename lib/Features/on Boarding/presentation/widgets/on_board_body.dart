import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

import '../../../../core/constants.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'custom_page_view.dart';
class OnBoargingBody extends StatelessWidget {
  const OnBoargingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(),
        Positioned(
          left: 0,
          right: 5,
          bottom: SizeConfig.defaultSize! *22,
          child: DotsIndicator(dotsCount: 3,
            position: 0,
            decorator: DotsDecorator(
              color: grayColor
            ),
          ),
        ),
        Positioned(
          right: 32,
          top: SizeConfig.defaultSize! *8,
          child: Text(
            'Skip',style:TextStyle(
            fontFamily: 'poppins',
            fontSize: 14,
            color: Color(0xff898989),
          ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! *6,
            left:SizeConfig.defaultSize! * 10 ,
            right:SizeConfig.defaultSize! * 10 ,
            child: GeneralButton(
              text: 'Next',
            )),
      ],
    );
  }
}
