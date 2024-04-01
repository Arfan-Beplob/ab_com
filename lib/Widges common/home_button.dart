import 'package:ab_com/consts/consts.dart';
import 'package:flutter/cupertino.dart';
Widget homeButton ({height,width,icon,String? title,onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon ,width: 26,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.white.rounded.size(width, height).shadowSm.make();
}