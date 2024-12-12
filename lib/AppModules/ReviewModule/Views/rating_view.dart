import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/myButton.dart';
import '../../../Widgets/myFormField.dart';
import '../../../Widgets/myText.dart';
import 'package:gosportified/Utils/appColors.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(text:'Reviews & Ratings',),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            MyText(text:'Overall Ratings',fontSize:20,),
            const SizedBox(height:20,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    MyText(text:'4.0',fontSize:20,),
                    MyText(text:'*****',color:Colors.orange,fontSize:25,),
                    MyText(text:'50 Reviews',fontSize:12,color:Colors.black45,),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        MyText(text:'4',fontSize:12,color:Colors.black45,),
                        const SizedBox(width:2,),
                        Container(
                          height:10,
                          width:211,
                          decoration:BoxDecoration(
                            color:primaryLight,
                            borderRadius:BorderRadius.circular(8)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText(text:'3',fontSize:12,color:Colors.black45,),
                        const SizedBox(width:2,),
                        Container(
                          height:10,
                          width:211,
                          decoration:BoxDecoration(
                              color:primaryLight,
                              borderRadius:BorderRadius.circular(8)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText(text:'2',fontSize:12,color:Colors.black45,),
                        const SizedBox(width:2,),
                        Container(
                          height:10,
                          width:211,
                          decoration:BoxDecoration(
                              color:Colors.black12,
                              borderRadius:BorderRadius.circular(8)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText(text:'1',fontSize:12,color:Colors.black45,),
                        const SizedBox(width:2,),
                        Container(
                          height:10,
                          width:211,
                          decoration:BoxDecoration(
                              color:Colors.black12,
                              borderRadius:BorderRadius.circular(8)
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height:40,),
            ListTile(
              leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/Frame 155.png'))),
            ),
              title:MyText(text:'Albert Flores',fontSize:18,),
            ),
            Row(
              children: [
                MyText(text:'****** ',fontSize:20,color:Colors.orange,),
                MyText(text:'21 july 2024',fontSize:12,color:Colors.black45,),
              ],
            ),
            MyText(text:'Lorem ipsum dolor sit amet, consectetur adipiscing eelit, sed do eiusmod tempor incididunt ut labore et aldolore.',
              fontSize:16,color:Colors.black45,maxlines:3,),
            const SizedBox(height:20,),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/Frame 155.png'))),
              ),
              title:MyText(text:'Albert Flores',fontSize:18,),
            ),
            Row(
              children: [
                MyText(text:'****** ',fontSize:20,color:Colors.orange,),
                MyText(text:'21 july 2024',fontSize:12,color:Colors.black45,),
              ],
            ),
            MyText(text:'Lorem ipsum dolor sit amet, consectetur adipiscing eelit, sed do eiusmod tempor incididunt ut labore et aldolore.',
              fontSize:16,color:Colors.black45,maxlines:3,)
          ],
        ),
      ),
    );
  }
}
