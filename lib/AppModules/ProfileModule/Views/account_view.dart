import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/Utils/appColors.dart';
import 'package:gosportified/AppModules/HistoryModule/Views/privacy_policy_view.dart';
import 'package:gosportified/AppModules/ProfileModule/Views/profile_settings_view.dart';
import 'package:gosportified/AppModules/ReviewModule/Views/rating_view.dart';

import '../../../Widgets/myText.dart';

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
                ),
                subtitle: MyText(
                  text: 'jamesleo@gmail.com',
                  color: Colors.black45,
                ),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  const SizedBox(width:90,),
                  MyText(
                    text: '(4,0)',
                    color: Colors.black45,
                  ),
                  MyText(
                    text: '*****',
                    color: Colors.orange,fontSize: 20,
                  ),

                ],
              ),
              const SizedBox(height:10,),
              const Divider(
                height:2,
              ),
              const SizedBox(height:10,),
              MyText(text:'Account',fontSize:20,),
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
                      title:MyText(text:'Profile Settings',fontSize:18,),
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
                      title:MyText(text:'Stadium Management',fontSize:18,),
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
                      title:MyText(text:'Notifications',fontSize:18,),
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
                      title:MyText(text:'Review & Ratings',fontSize:18,),
                    ),

                  ],
                ),
              ),
              const SizedBox(height:20,),
              MyText(text:'Help Center',fontSize:20,),
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
                      ),
                      title:MyText(text:'Contact Us',fontSize:18,),
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
                            image:DecorationImage(image:AssetImage('assets/Group 18430.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(text:'Terms & Privacy Policy',fontSize:18,),
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
                              title:MyText(text:'Hi James Leo',fontSize:22,),
                              content:MyText(text:'Are you sure you want to Logout?',fontSize:16,color:Colors.black45,),
                              actions: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap:(){
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height:35,
                                        width:130,
                                        decoration:BoxDecoration(
                                            borderRadius:BorderRadius.circular(10),
                                            border:Border.all(
                                                color:primaryLight
                                            )
                                        ),
                                        child:Center(child: MyText(text:'No',color:primaryLight,fontSize:18,)),
                                      ),
                                    ),
                                    Container(
                                      height:35,
                                      width:130,
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(10),
                                          color:primaryLight
                                      ),
                                      child:Center(child: MyText(text:'Yes',color:Colors.white,fontSize:18,)),
                                    ),
                                  ],
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
                            image:DecorationImage(image:AssetImage('assets/Vector.png')),
                            shape:BoxShape.circle,
                            color:Color(0xffF3F3F3)
                        ),
                      ),
                      title:MyText(text:'Log Out',fontSize:18,),
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
