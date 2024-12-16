import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/AppModules/StidiumModule/Views/manage_time_view.dart';
import '../../../Widgets/my_text.dart';
import '../../../Utils/app_colors.dart';
import 'create_pitch_view.dart';


class CricketDetailView extends StatelessWidget {
  const CricketDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:MyText(  font:FontWeight.bold,text:'Cricket Details',fontSize:20,),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Column(
            children: [
              Container(
                height:80,
                width:double.infinity,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    border:Border.all(
                        color:const Color(0xffE5E5E5)
                    )
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(  font:FontWeight.bold,text:'Create Pitch',fontSize:18,),
                      InkWell(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (c)=>const CreatePitchView()));
                        },
                        child: Container(
                          height:40,
                          width:40,
                          decoration:BoxDecoration(
                              shape:BoxShape.circle,
                              color:primaryLight
                          ),
                          child:const Icon(Icons.add,color:Colors.white,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height:30,),
              Container(
                height:204,
                width:double.infinity,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    border:Border.all(
                        color:const Color(0xffE5E5E5)
                    )
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      MyText(  font:FontWeight.bold,text:'National ABC Stadium',fontSize:18,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                MyText(  font:FontWeight.bold,text:'Booked Slot',fontSize:16,color:Colors.black,),
                                Column(
                                  children: [
                                    MyText(text:'05:00 PM - 07:00PM',fontSize:16,color:Colors.black54,),
                                    MyText(text:'05:00 PM - 07:00PM',fontSize:16,color:Colors.black54,),
                                  ],
                                ),
                              ],
                            ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder: (c)=>  ManageTimeView()));
                            },
                            child: Container(
                              height:35,
                              width:150,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                                  border:Border.all(
                                      color:primaryLight
                                  )
                              ),
                              child:Center(child: MyText(  font:FontWeight.bold,text:'Manage Time',color:primaryLight,fontSize:18,)),
                            ),
                          ),
                          InkWell(
                            onTap:(){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:MyText(  font:FontWeight.bold,text:'Hi James Leo',fontSize:22,),
                                    content:MyText(text:'Are you sure you want to delete?',fontSize:18,color:Colors.black45,),
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
                                              child:Center(child: MyText(  font:FontWeight.bold,text:'No',color:primaryLight,fontSize:18,)),
                                            ),
                                          ),
                                          Container(
                                            height:35,
                                            width:130,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(10),
                                                color:primaryLight
                                            ),
                                            child:Center(child: MyText(  font:FontWeight.bold,text:'Yes',color:Colors.white,fontSize:18,)),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(
                              height:35,
                              width:150,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                                  color:primaryLight
                              ),
                              child:Center(child: MyText(  font:FontWeight.bold,text:'Delete',color:Colors.white,fontSize:18,)),
                            ),
                          )
                        ],
                      )
                          ],
                        ),
                ),
                    ),
              const SizedBox(height:30,),


                  ],
                ),
              ),

    );
  }
}
