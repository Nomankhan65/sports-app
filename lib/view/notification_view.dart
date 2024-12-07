import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/components/myText.dart';
import '../helper/constans/appColors.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading:false,
        iconTheme:const IconThemeData(
        color:Colors.white
    ),
    backgroundColor:primaryLight,
    title:MyText(text:'Notifications',color:Colors.white,fontSize:20,),
    ),
      body:Column(
        children: [
          const SizedBox(height:10,),
          Row(
             children: [
               const SizedBox(width:10,),
              Container(
                height:30,
                width:60,
                decoration:BoxDecoration(
                  border:Border.all(
                    color:primaryLight
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: MyText(text:'All',color:primaryLight,)),
              ),
               const SizedBox(width:10,),
              Container(
                height:30,
                width:90,
                decoration:BoxDecoration(
                  border:Border.all(
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: MyText(text:'Requests',)),
              ),
            ],
          ),
          const SizedBox(height:10,),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical:1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration:const BoxDecoration(
                        shape:BoxShape.circle,
                        color:Color(0xffF3F3F3)
                      ),
                      child:Icon(Icons.calendar_month_sharp,color:primaryLight,),
                    ),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            MyText(text:'New Booking Request',fontSize:18,),
                            const SizedBox(width:70,),
                            MyText(text:'12 jun 2014',fontSize:12,),
                          ],
                        ),
                        MyText(maxlines:2,text:'Booking request for Stadium XYZ Pitch ABCD  ',),

                      ],
                    )
                  ],
                ),
                const SizedBox(height:10,),

                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    const SizedBox(width:95,),
                    Container(
                      height:25,
                      width:80,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                        border:Border.all(
                          color:primaryLight
                        )
                      ),
                      child:Center(child: MyText(text:'Decline',color:primaryLight,fontSize:14,)),
                    ),
                    const SizedBox(width:20,),
                    Container(
                      height:25,
                      width:80,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:primaryLight
                      ),
                      child:Center(child: MyText(text:'Accept',color:Colors.white,fontSize:14,)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height:10,),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical:1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration:const BoxDecoration(
                          shape:BoxShape.circle,
                          color:Color(0xffF3F3F3)
                      ),
                      child:Icon(Icons.calendar_month_sharp,color:primaryLight,),
                    ),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            MyText(text:'New Booking Request',fontSize:18,),
                            const SizedBox(width:70,),
                            MyText(text:'12 jun 2014',fontSize:12,),
                          ],
                        ),
                        MyText(maxlines:2,text:'Booking request for Stadium XYZ Pitch ABCD  ',),

                      ],
                    )
                  ],
                ),
                const SizedBox(height:10,),

                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    const SizedBox(width:95,),
                    Container(
                      height:25,
                      width:80,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          border:Border.all(
                              color:primaryLight
                          )
                      ),
                      child:Center(child: MyText(text:'Decline',color:primaryLight,fontSize:14,)),
                    ),
                    const SizedBox(width:20,),
                    Container(
                      height:25,
                      width:80,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:primaryLight
                      ),
                      child:Center(child: MyText(text:'Accept',color:Colors.white,fontSize:14,)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height:10,),
          const Divider(),
        ],
      ),
    );
  }
}
