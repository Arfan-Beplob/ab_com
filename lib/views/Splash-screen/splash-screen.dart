import 'package:ab_com/Widges%20common/app-logo.dart';
import 'package:ab_com/consts/colors.dart';
import 'package:ab_com/consts/consts.dart';
import 'package:ab_com/views/auth%20screen/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  chingeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>LoginScreen());
    });
  }
@override
  void initState() {
    chingeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg,width: 300,)),
            20.heightBox,
            appLogo(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
