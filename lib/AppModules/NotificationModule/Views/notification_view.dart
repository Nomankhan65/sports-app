import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_text.dart';
import '../../../Utils/app_colors.dart';

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
    title:MyText(text:'Notifications',color:Colors.white,fontSize:20,font:FontWeight.bold,),
    ),
      body:DefaultTabController(length: 2, child:Column(
        children: [
          const SizedBox(height:10,),
          Align(
            alignment:Alignment.topLeft,
            child: Container(
              height:35,
              width:240,
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(15)
              ),
              child: TabBar(
                  dividerHeight: 0,
                  labelColor:primaryLight,
                  unselectedLabelColor:Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelStyle:const TextStyle(
                    color: Colors.grey,
                  ),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:Border.all(
                        color:primaryLight,
                        width:1.5
                      ),
                      ),
                  tabs:[
                    Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        border:Border.all(
                          color:Colors.grey,
                          width:1
                        )
                      ),
                      child: const Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("All",style:TextStyle(fontWeight:FontWeight.bold)),
                        ),
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(15),
                          border:Border.all(
                              color:Colors.grey,
                              width:1
                          )
                      ),
                      child: const Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Requests",style:TextStyle(fontWeight:FontWeight.bold)),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),

          Expanded(child: TabBarView(children:[
          Column(children: [   const SizedBox(height:5,),
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
                              MyText(text:'New Booking Request',fontSize:18,font:FontWeight.bold,),
                              const SizedBox(width:40,),
                              MyText(text:'12 jun 2014',fontSize:12,font:FontWeight.bold,color:Colors.grey,),
                            ],
                          ),
                          MyText(font:FontWeight.bold,maxlines:2,text:'Booking request for Stadium XYZ Pitch ABCD',color:Colors.grey,),

                        ],
                      )
                    ],
                  ),
                  const SizedBox(height:10,),
                  
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
                              MyText(text:' Booking Confirmed',fontSize:18,font:FontWeight.bold,),
                              const SizedBox(width:40,),
                              MyText(text:'12 jun 2014',fontSize:12,font:FontWeight.bold,color:Colors.grey,),
                            ],
                          ),
                          MyText(font:FontWeight.bold,maxlines:2,text:'Booking request for Stadium XYZ Pitch ABCD',color:Colors.grey,),

                        ],
                      )
                    ],
                  ),
                  const SizedBox(height:10,),


                ],
              ),
            ),
            const SizedBox(height:5,),
            const Divider(),],),
            Column(children: [   const SizedBox(height:5,),
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
                                MyText(text:'New Booking Request',fontSize:18,font:FontWeight.bold,),
                                const SizedBox(width:40,),
                                MyText(text:'12 jun 2014',fontSize:12,font:FontWeight.bold,color:Colors.grey,),
                              ],
                            ),
                            MyText(font:FontWeight.bold,maxlines:2,text:'Booking request for Stadium XYZ Pitch ABCD',color:Colors.grey,),

                          ],
                        )
                      ],
                    ),
                    const SizedBox(height:10,),

                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        const SizedBox(width:105,),
                        Container(
                          height:30,
                          width:80,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              border:Border.all(
                                  color:primaryLight
                              )
                          ),
                          child:Center(child: MyText(font:FontWeight.bold,text:'Decline',color:primaryLight,fontSize:14,)),
                        ),
                        const SizedBox(width:20,),
                        Container(
                          height:30,
                          width:80,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:primaryLight
                          ),
                          child:Center(child: MyText(font:FontWeight.bold,text:'Accept',color:Colors.white,fontSize:14,)),
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
                                MyText(text:'New Booking Request',fontSize:18,font:FontWeight.bold,),
                                const SizedBox(width:40,),
                                MyText(text:'12 jun 2014',fontSize:12,font:FontWeight.bold,color:Colors.grey,),
                              ],
                            ),
                            MyText(font:FontWeight.bold,maxlines:2,text:'Booking request for Stadium XYZ Pitch ABCD',color:Colors.grey,),

                          ],
                        )
                      ],
                    ),
                    const SizedBox(height:10,),

                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        const SizedBox(width:105,),
                        Container(
                          height:30,
                          width:80,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              border:Border.all(
                                  color:primaryLight
                              )
                          ),
                          child:Center(child: MyText(font:FontWeight.bold,text:'Decline',color:primaryLight,fontSize:14,)),
                        ),
                        const SizedBox(width:20,),
                        Container(
                          height:30,
                          width:80,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:primaryLight
                          ),
                          child:Center(child: MyText(font:FontWeight.bold,text:'Accept',color:Colors.white,fontSize:14,)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height:5,),
              const Divider(),],),

        ]),),
       
        ],
      ),)
    );
  }
}
