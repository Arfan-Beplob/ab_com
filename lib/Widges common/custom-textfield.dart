import 'package:ab_com/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget customTextField({String? titel, String? hint,controller }){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titel!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor
            )
          )
        ),
      ),
      5.heightBox
    ],
  );
}