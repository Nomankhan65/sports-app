import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/Utils/app_colors.dart';
import 'package:gosportified/AppModules/HistoryModule/Views/privacy_policy_view.dart';
import 'package:gosportified/AppModules/ProfileModule/Views/profile_settings_view.dart';
import 'package:gosportified/AppModules/ReviewModule/Views/rating_view.dart';

import '../../../Widgets/my_text.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20,20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,

            children: [
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/Frame 155.png'))),
                ),
                title: MyText(
                  text: 'James Leo',
                  fontSize: 20,
                  font:FontWeight.bold,
                ),
                subtitle: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'jamesleo@gmail.com',
                      color: Colors.black45,
                      font:FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: '(4,0)',
                          color: Colors.black45,
                        ),
                        MyText(
                          text: '*****',
                          color: Colors.orange,fontSize: 22,
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height:10,),
              const Divider(
                height:2,
              ),
              const SizedBox(height:10,),
              MyText(text:'Account',fontSize:20,font:FontWeight.bold,),

              const SizedBox(height:10,),
              Container(
                height:352,
                width:double.infinity,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(15),
                  border:Border.all(
                    color:const Color(0xffE5E5E5)
                  )
                ),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (c)=>const ProfileSettingsView()));
                      },
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                          image:DecorationImage(image:AssetImage('assets/Vector.png')),
                          shape:BoxShape.circle,
                          color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(font:FontWeight.bold,text:'Profile Settings',fontSize:18,),
                    ),
                    const Divider(
                      color:Color(0xffE5E5E5),
                    ),
                    ListTile(
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                            image:DecorationImage(image:AssetImage('assets/Group 18430.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(font:FontWeight.bold,text:'Stadium Management',fontSize:18,),
                    ),
                    const Divider(
                      color:Color(0xffE5E5E5),
                    ),
                    ListTile(
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                            image:DecorationImage(image:AssetImage('assets/Group 18429.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(font:FontWeight.bold,text:'Notifications',fontSize:18,),
                      trailing:Switch(
                        activeColor:primaryLight,
                          value:true, onChanged: (val){

                      }),

                    ),
                    const Divider(
                      color:Color(0xffE5E5E5),
                    ),
                    ListTile(
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (c)=>const RatingView()));
                      },
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                            image:DecorationImage(image:AssetImage('assets/review.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),

                      ),
                      title:MyText(font:FontWeight.bold,text:'Review & Ratings',fontSize:18,),
                    ),

                  ],
                ),
              ),
              const SizedBox(height:20,),
              MyText(font:FontWeight.bold,text:'Help Center',fontSize:20,),
              const SizedBox(height:20,),
              Container(
                height:265,
                width:double.infinity,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    border:Border.all(
                        color:const Color(0xffE5E5E5)
                    )
                ),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                            image:DecorationImage(image:AssetImage('assets/privacy.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                        child:Icon(Icons.question_mark,color:primaryLight,size:15,),
                      ),
                      title:MyText(font:FontWeight.bold,text:'Contact Us',fontSize:18,),
                    ),
                    const Divider(
                      color:Color(0xffE5E5E5),
                    ),
                    ListTile(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const PrivacyPolicyView()));
                      },
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                            image:DecorationImage(image:AssetImage('assets/privacy.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(font:FontWeight.bold,text:'Terms & Privacy Policy',fontSize:18,),
                    ),
                    const Divider(
                      color:Color(0xffE5E5E5),
                    ),
                    ListTile(
                      onTap:(){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:Center(child: MyText(text:'Logout',fontSize:32,font:FontWeight.bold,)),
                              content:Column(
                                mainAxisSize:MainAxisSize.min,
                                children: [
                                  MyText(text:'Hi James Leo',fontSize:18,font:FontWeight.bold,),
                                  MyText(maxlines:2,text:'Are you sure you want to Logout?',fontSize:16,color:Colors.black,font:FontWeight.bold,),
                                ],
                              ),
                              actions: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical:10),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap:(){
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height:41,
                                          width:130,
                                          decoration:BoxDecoration(
                                              borderRadius:BorderRadius.circular(10),
                                              border:Border.all(
                                                  color:primaryLight
                                              )
                                          ),
                                          child:Center(child: MyText(font:FontWeight.bold,text:'No',color:primaryLight,fontSize:18,)),
                                        ),
                                      ),
                                      Container(
                                        height:41,
                                        width:130,
                                        decoration:BoxDecoration(
                                            borderRadius:BorderRadius.circular(10),
                                            color:primaryLight
                                        ),
                                        child:Center(child: MyText(font:FontWeight.bold,text:'Yes',color:Colors.white,fontSize:18,)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      },
                      leading:Container(
                        height:50,
                        width:50,
                        decoration:const BoxDecoration(
                            image:DecorationImage(image:AssetImage('assets/logout.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(font:FontWeight.bold,text:'Log Out',fontSize:18,),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
