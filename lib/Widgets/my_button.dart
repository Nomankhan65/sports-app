import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utils/app_colors.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

    MyButton({super.key,required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:60,
        width:double.infinity,
        child: ElevatedButton(
            style:ElevatedButton.styleFrom(
                backgroundColor:primaryLight
            ),
            onPressed: onTap, child:MyText(text:text,fontSize:18,color:Colors.white,)));}
}
