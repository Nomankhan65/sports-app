import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/helper/components/myButton.dart';
import 'package:gosportified/helper/components/myFormField.dart';
import 'package:gosportified/helper/components/myText.dart';
import 'package:gosportified/helper/constans/appColors.dart';
import 'package:gosportified/view/forgot_password_view.dart';
import 'package:gosportified/view/home_page.dart';
import 'package:gosportified/view/signup_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              MyText(
                text:'Sign in',
                color:const Color(0xff393939),
                fontSize:28,
              ),
              const SizedBox(height:15,),
              MyText(
                text:'Hi! Welcome back, you’ve been missed',
                color:Colors.black45,
                fontSize:15,
              ),
              const SizedBox(height:40,),
              MyText(
                text:'Email',
                color:Colors.black87,
                fontSize:18,
              ),
           MyFormField(text:'example@gmail.com',horizonatlPadding:0,verticalPadding:5,),
              const SizedBox(height:40,),
              MyText(
                text:'Password',
                color:Colors.black87,
                fontSize:18,
              ),
              MyFormField(text:'************',horizonatlPadding:0,verticalPadding:5,),
              Align(
                alignment:Alignment.topRight,
                child:TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_)=>const ForgotPasswordView()));
                }, child:MyText(
                  text:'Forgot password?',
                  color:primaryLight,
                  fontSize:15,
                ),)
              ),
              const SizedBox(height:40,),

             MyButton(onTap:(){
               Navigator.push(context,MaterialPageRoute(builder: (c)=>const HomePage()));
             },text:'Sign in'),
              const SizedBox(height:40,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                    height:1,
                    width:90,
                    color:Colors.black26,
                  ),
                  const SizedBox(width:10,),
                  MyText(text:'Or sign in with',fontSize:15,color:Colors.black54,),
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
                  MyText(text:'Don’t have an account?',fontSize:18,color:Colors.black54,),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (c)=>const SignupView()));
                  }, child: MyText(text:'Sign up',fontSize:18,color:const Color(0xff2D8E00),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
