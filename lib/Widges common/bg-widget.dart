import 'package:ab_com/consts/colors.dart';
import 'package:ab_com/consts/consts.dart';
import 'package:flutter/cupertino.dart';
Widget bgWidget(Widget? child){
return Container(
  decoration: const BoxDecoration(image: DecorationImage(image:AssetImage(imgBackground),fit: BoxFit.fill)),
  child: child,
);
}