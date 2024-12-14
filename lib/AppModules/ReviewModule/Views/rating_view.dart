import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(text:'Reviews & Ratings',  font:FontWeight.bold,),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            MyText(text:'Overall Ratings',fontSize:20,  font:FontWeight.bold,),
            const SizedBox(height:20,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    MyText(text:'4.0',fontSize:25, font:FontWeight.bold,),
                    MyText(text:'*****',color:Colors.orange,fontSize:30, font:FontWeight.bold,),
                    MyText(text:'50 Reviews',fontSize:16,color:Colors.black45, font:FontWeight.bold,),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        MyText(text:'5',fontSize:12,color:Colors.black45,),
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
              title:MyText(text:'Albert Flores',fontSize:18, font:FontWeight.bold,),
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                MyText(text:'****** ',fontSize:20,color:Colors.orange, font:FontWeight.bold),
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
              title:MyText(text:'Albert Flores',fontSize:18, font:FontWeight.bold,),
            ),
            Row(  crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                MyText(text:'****** ',fontSize:20,color:Colors.orange, font:FontWeight.bold,),
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
