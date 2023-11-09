import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

import '../constants.dart';
class GeneralButton extends StatelessWidget {
  const GeneralButton({Key? key,this.text}) : super(key: key);
 final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color:grayColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
        child: Text(
         text!,style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
