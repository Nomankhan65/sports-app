import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/myButton.dart';
import '../../../Widgets/myFormField.dart';
import '../../../Widgets/myText.dart';
import '../../../Utils/appColors.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return  Scaffold(
      appBar:AppBar(),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              MyText(
                text:'Sign Up',
                color:const Color(0xff393939),
                fontSize:28,
              ),
              const SizedBox(height:15,),
              MyText(
                text:'By signing up, you agree the Terms of Service and Privacy Policy',
                color:Colors.black45,
                maxlines:2,
                fontSize:15,
              ),
              const SizedBox(height:20,),
              MyText(
                text:'Name',
                color:Colors.black87,
                fontSize:18,
              ),
              MyFormField(text:'Stadium Owner Name',horizonatlPadding:0,verticalPadding:5,),
              const SizedBox(height:15,),
              MyText(
                text:'Email',
                color:Colors.black87,
                fontSize:18,
              ),
              MyFormField(text:'example@gmail.com',horizonatlPadding:0,verticalPadding:5,),
              const SizedBox(height:15,),
              MyText(
                text:'Phone number',
                color:Colors.black87,
                fontSize:18,
              ),
              MyFormField(text:'+971 |  Enter phone number',horizonatlPadding:0,verticalPadding:5,),
              const SizedBox(height:15,),
              MyText(
                text:'Password',
                color:Colors.black87,
                fontSize:18,
              ),
              MyFormField(text:'************',horizonatlPadding:0,verticalPadding:5,),
              Row(
                children: [
              Checkbox(
                side:const BorderSide(
                  color:Colors.black45
                ),
              value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
                  MyText(
                    text:'Agree with ',
                    color:Colors.black45,
                    fontSize:15,
                  ),
                  MyText(
                    text:'Terms & conditions',
                    color:primaryLight,
                    fontSize:15,
                  ),
                ],
              ),
              const SizedBox(height:30,),
              MyButton(onTap:(){
              },text:'Sign up'),
              const SizedBox(height:30,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                    height:1,
                    width:90,
                    color:Colors.black26,
                  ),
                  const SizedBox(width:10,),
                  MyText(text:'Or sign up with',fontSize:15,color:Colors.black54,),
                  const SizedBox(width:10,),
                  Container(
                    height:1,
                    width:90,
                    color:Colors.black26,
                  ),
                ],
              ),
              const SizedBox(height:40,),
              Center(
                child: Container(
                  height:80,
                  width:80,
                  decoration:const BoxDecoration(
                      shape:BoxShape.circle,
                      color:Color(0xffE5E5E5),
                      image:DecorationImage(image:AssetImage('assets/Group 18.png'))
                  ),
                ),
              ),
              const SizedBox(height:40,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyText(text:'Already have an account?',fontSize:18,color:Colors.black54,),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: MyText(text:'Sign in',fontSize:18,color:const Color(0xff2D8E00),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
