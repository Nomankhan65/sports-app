import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/res/appColors.dart';
import '../res/components/myButton.dart';
import '../res/components/myFormField.dart';
import '../res/components/myText.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
                text:'Verify Code',
                color:const Color(0xff393939),
                fontSize:28,
              ),
              const SizedBox(height:15,),
              MyText(
                text:'Please enter the code we just sent to email',
                color:Colors.black45,
                fontSize:15,
                maxlines:2,
              ),
              MyText(
                text:'+971 303  ********',
                color:primaryLight,
                fontSize:15,
                maxlines:2,
              ),
              const SizedBox(height:30,),
              Center(child: Image.asset(height:198,width:188,'assets/Group 22.png')),
              const SizedBox(height:30,),
              SizedBox(
                height:75,
                child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                    itemCount:4,
                    itemBuilder:(context,index){
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height:75,
                      width:79,
                      decoration:BoxDecoration(
                          color:const Color(0xffF3F3F3),
                        borderRadius:BorderRadius.circular(15)
                      ),
                    );

                }),
              ),
              const SizedBox(height:30,),
              Center(
                child: MyText(
                  text:'Didn’t receive OTP?',
                  color:Colors.black54,
                  fontSize:15,
                ),
              ),
              const SizedBox(height:7,),
              Center(
                child: MyText(
                  text:'Resend code',
                  color:primaryLight,
                  fontSize:15,
                ),
              ),

              const SizedBox(height:50,),
              MyButton(onTap:(){
              },text:'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}
