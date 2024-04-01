import 'package:ab_com/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Widges common/app-logo.dart';
import '../../Widges common/bg-widget.dart';
import '../../Widges common/custom-textfield.dart';
import '../../Widges common/our-button.dart';
class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  bool? isCheck = false;

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
            'Join with $appname'.text.fontFamily(bold).white.size(18).make(),
            25.heightBox,
            Column(
              children: [
                customTextField(titel: name, hint: nameHint),
                customTextField(titel: email, hint: emailHint),
                customTextField(titel: password, hint: passHint),
                customTextField(titel: retypePassword, hint: passHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPassword.text.make())),

                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                        checkColor: whiteColor,
                        value: isCheck, onChanged: (newValue){
                          setState(() {
                            isCheck= newValue;
                          });
                    }),
                    10.widthBox,
                   Expanded(
                     child: RichText(text: const TextSpan(
                       children: [
                         TextSpan(
                           text: "I agree to the ",
                           style: TextStyle(
                             fontFamily: regular,
                             color: fontGrey
                           )
                         ),
                         TextSpan(
                           text: termsAndCondition,
                           style: TextStyle(
                             fontFamily: regular,
                             color: redColor
                           )
                         ),
                         TextSpan(
                           text: " & ",
                           style: TextStyle(
                             fontFamily: regular,
                             color: redColor
                           )
                         ),
                         TextSpan(
                           text: privacyPolicy,
                           style: TextStyle(
                             fontFamily: regular,
                             color: redColor
                           )
                         ),
                       ]
                     )),
                   )
                  ],
                ),
                10.heightBox,
                ourButton(
                    color: isCheck == true? redColor : lightGrey,
                    title: signup,
                    textColor: whiteColor,
                    onpress: (){}
                ).box.width(context.screenWidth -50).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).make().onTap(() {
                      Get.back();
                    })
                  ],
                ),
              ],
            ).box.white.rounded.padding( EdgeInsets.all(16)).width(context.screenWidth -70).white.shadowSm.make()
          ],
        ),
      ),
    ));
  }
}

