import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image}) : super(key: key);
final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(13),
        SizedBox(
          height: SizeConfig.defaultSize! ,
        ),
        Image.asset(image!),
        const VerticalSpace(2.5),
        Text(
          title!,style: TextStyle(
          fontSize: 20,
          fontFamily: 'poopins',
          color: Color(0xff2f2e41),
          fontWeight: FontWeight.bold,
        ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          subTitle!,style: TextStyle(
          fontSize: 15,
          fontFamily: 'poopins',
          color: Color(0xff78787c),
          fontWeight: FontWeight.w600,
        ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

class VerticalSpace extends StatelessWidget{
  const VerticalSpace(this.value) ;
  final double? value;
  @override
  Widget build(BuildContext context) {
  return SizedBox(
  height: SizeConfig.defaultSize! * value!,
  );
  }
  }

