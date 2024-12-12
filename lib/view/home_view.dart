import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/components/myFormField.dart';
import '../res/components/myText.dart';
import 'package:gosportified/res/appColors.dart';
import 'package:gosportified/view/add_ground_view.dart';
import 'package:gosportified/view/edit_ground_view.dart';
import 'package:gosportified/view/stadium_detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        iconTheme:const IconThemeData(
            color:Colors.white
        ),
        backgroundColor:primaryLight,
        title:MyText(text:'Home',color:Colors.white,fontSize:20,),
        actions:[Image.asset('assets/notify.png'),
        const SizedBox(width:20,),
        ]
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children: [
            MyFormField(horizonatlPadding:0,text:'Search...'),
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
                    MyText(text:'My Stadiums',fontSize:18,),
                    InkWell(
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (c)=>const AddgroundScreen()));
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
              height:249,
              width:double.infinity,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(15),
                border:Border.all(
                  color:const Color(0xffE5E5E5)
                )
              ),
              child:  Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading:Container(
                      height:60,
                      width:60,
                      decoration:const BoxDecoration(
                        color:Color(0xffE5E5E5),
                        shape:BoxShape.circle
                      ),
                      child:const Icon(Icons.stadium),
                    ),
                    title:MyText(text:'National ABC Stadium',fontSize:18,),
                    subtitle:Row(
                      children: [
                        const Icon(Icons.location_on_outlined,size:15,color:Colors.black45,),
                        MyText(text:' Golf Sports Academy,Dubai~5.5 kms',fontSize:12,color:Colors.black45,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text:'Timings',color:Colors.black45,fontSize:16,),
                        MyText(text:'09:00 AM - 08:00 PM',color:Colors.black87,fontSize:16,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text:'Type of Game ',color:Colors.black45,fontSize:16,),
                        MyText(text:'Cricket, Football',color:Colors.black87,fontSize:16,)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (c)=>const StadiumDetailView()));
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
                          child:Center(child: MyText(text:'View',color:primaryLight,fontSize:18,)),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (c)=>const EditGroundView()));
                        },
                        child: Container(
                          height:35,
                          width:130,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                               color:primaryLight
                          ),
                          child:Center(child: MyText(text:'Edit',color:Colors.white,fontSize:18,)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
