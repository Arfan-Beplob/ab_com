import 'package:ab_com/consts/colors.dart';
import 'package:ab_com/consts/consts.dart';
import 'package:flutter/widgets.dart';
Widget appLogo(){
  return Image.asset(icAppLogo).box.white.size(77,77).padding(const EdgeInsets.all(8)).rounded.make();
}