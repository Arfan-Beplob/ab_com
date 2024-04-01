import 'package:ab_com/Widges%20common/app-logo.dart';
import 'package:ab_com/Widges%20common/bg-widget.dart';
import 'package:ab_com/Widges%20common/custom-textfield.dart';
import 'package:ab_com/Widges%20common/our-button.dart';
import 'package:ab_com/consts/consts.dart';
import 'package:ab_com/consts/list.dart';
import 'package:ab_com/views/HomeScreen/home.dart';
import 'package:ab_com/views/auth%20screen/signup-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context .screenHeight * 0.1).heightBox,
            appLogo(),
            10.heightBox,
            'Log in To $appname'.text.fontFamily(bold).white.size(18).make(),
            25.heightBox,
            Column(
              children: [
                customTextField(titel: email, hint: emailHint),
                customTextField(titel: password, hint: passHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPassword.text.make())),
                5.heightBox,
                ourButton(
                  color: redColor,
                  title: login,
                  textColor: whiteColor,
                  onpress: (){
                    Get.to(()=>Home());
                  }
                ).box.width(context.screenWidth -50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                  color: lightGolden,
                  title: signup,
                  textColor:redColor ,
                  onpress: (){
                    Get.to(()=> const SingupScreen());
                  }
                ).box.width(context.screenWidth -50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialMediaIconList[index],width: 30,),
                    ),
                  )),
                )
              ],
            ).box.white.rounded.padding( EdgeInsets.all(16)).width(context.screenWidth -70).white.shadowSm.make()
          ],
        ),
      ),
    ));
  }
}
