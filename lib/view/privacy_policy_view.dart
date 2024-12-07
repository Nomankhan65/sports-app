import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/helper/components/myText.dart';
import 'package:gosportified/helper/constans/appColors.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(
          text:'Terms & Privacy Policy',
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            MyText(text:'Go Sportified App Terms & Policies',fontSize:24,),
            const SizedBox(height:10,),
            MyText(text:'Last Updated : October 04, 2024',color:Colors.black54,),
            const SizedBox(height:20,),
            MyText(text:'1. General Overview',color:primaryLight,fontSize:18,),
            const SizedBox(height:10,),
            MyText(fontSize:15,maxlines:5,text:'Welcome to Go Sportified, a sports management platform that connects athletes, organizers, and venue representatives. By using this application, you agree to comply with and be bound by the following terms and conditions. These terms apply to all users, including organizers, players, and stadium representatives.',)
           , const SizedBox(height:20,),
            MyText(text:'2. Account Registration and Responsibilities',color:primaryLight,fontSize:18,),
            const SizedBox(height:10,),
            MyText(fontSize:15,maxlines:5,text:'Users must provide accurate information when registering for an account Each user is responsible for maintaining the confidentiality of their login credentials. Users agree to update their personal information to ensure its accuracy at all times.',)
          ],
        ),
      ),
    );
  }
}
