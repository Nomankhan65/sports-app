import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/AppModules/AuthModule/Views/otp_view.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
                text:'Forget Password',
                color:const Color(0xff393939),
                fontSize:28,
                font:FontWeight.bold,
              ),
              const SizedBox(height:15,),
              MyText(
                text:'Type your register email below. we will send a verification code to verify your identity.',
                color:Colors.black45,
                fontSize:15,
                maxlines:2,
                font:FontWeight.bold,
              ),
              const SizedBox(height:50,),
              MyText(
                font:FontWeight.bold,
                text:'Email',
                color:Colors.black87,
                fontSize:18,
              ),
              MyFormField(text:'example@gmail.com',horizonatlPadding:0,verticalPadding:5,),
              const SizedBox(height:100,),
              MyButton(onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (c)=>  OtpView()));
              },text:'Reset Password'),
            ],
          ),
        ),
      ),
    );
  }
}
