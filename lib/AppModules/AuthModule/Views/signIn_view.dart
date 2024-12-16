import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';
import 'package:gosportified/AppModules/AuthModule/Views/forgot_password_view.dart';
import 'package:gosportified/AppModules/HomeModule/Views/app_root_view.dart';
import 'package:gosportified/AppModules/AuthModule/Views/signup_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading:false,
        backgroundColor:Colors.transparent,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              MyText(
                text:'Sign in',
                color:Colors.black87,
                fontSize:28,
                font:FontWeight.bold,
              ),
              const SizedBox(height:13,),
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
                font:FontWeight.bold,
              ),
           MyFormField(text:'example@gmail.com',horizonatlPadding:0,verticalPadding:5,),
              const SizedBox(height:40,),
              MyText(
                text:'Password',
                color:Colors.black87,
                fontSize:18,
                font:FontWeight.bold,
              ),
              MyFormField(text:'************',horizonatlPadding:0,verticalPadding:0,icon:const Icon(Icons.visibility_off,color:Colors.black45,),),
              Align(
                alignment:Alignment.topRight,
                child:TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_)=>const ForgotPasswordView()));
                }, child:MyText(
                  text:'Forgot password?',
                  color:primaryLight,
                  fontSize:15,
                  font:FontWeight.bold,

                ),)
              ),
              const SizedBox(height:30,),

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
                  MyText(text:'Or sign in with',fontSize:15,color:Colors.black54,  font:FontWeight.bold,),
                  const SizedBox(width:10,),
                  Container(
                    height:1,
                    width:90,
                    color:Colors.black26,
                  ),
                ],
              ),
              const SizedBox(height:30,),
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
              const SizedBox(height:20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyText(  font:FontWeight.bold,text:'Don’t have an account?',fontSize:18,color:Colors.black54,),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (c)=>const SignupView()));
                  }, child: MyText(  font:FontWeight.bold,text:'Sign up',fontSize:18,color:const Color(0xff2D8E00),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
