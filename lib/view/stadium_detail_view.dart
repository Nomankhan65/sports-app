import 'package:flutter/material.dart';
import '../res/components/myButton.dart';
import '../res/components/myFormField.dart';
import '../res/components/myText.dart';
import 'package:gosportified/res/appColors.dart';
import 'package:gosportified/view/cricket_detail_view.dart';

class StadiumDetailView extends StatelessWidget {
  const StadiumDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: 'Stadium Details',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'National XYZ Stadium',
              fontSize: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffF3F3F3)),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: primaryLight.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: 'Games',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          MyText(
                            text: 'Action',
                            fontSize: 18,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                   const SizedBox(height:10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                     child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (_)=>const CricketDetailView()));
                          },
                          child: MyText(
                            text: 'Cricket',
                            fontSize: 18,
                            color:Colors.black54,

                          ),
                        ),
                        Container(
                            height:30,
                            width:30,
                            decoration:BoxDecoration(
                              border:Border.all(
                                color:Colors.black54
                              ),
                              borderRadius:BorderRadius.circular(5)
                            ),
                            child: const Icon(Icons.delete_outline_outlined,color:Colors.black54,))
                      ],
                                       ),
                   ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Tennis',
                          fontSize: 18,
                          color:Colors.black54,

                        ),
                        Container(
                            height:30,
                            width:30,
                            decoration:BoxDecoration(
                                border:Border.all(
                                    color:Colors.black54
                                ),
                                borderRadius:BorderRadius.circular(5)
                            ),
                            child: const Icon(Icons.delete_outline_outlined,color:Colors.black54,))
                      ],
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal:20,vertical:5),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Basketball',
                          fontSize: 18,
                          color:Colors.black54,

                        ),
                        Container(
                            height:30,
                            width:30,
                            decoration:BoxDecoration(
                                border:Border.all(
                                    color:Colors.black54
                                ),
                                borderRadius:BorderRadius.circular(5)
                            ),
                            child: const Icon(Icons.delete_outline_outlined,color:Colors.black54,))
                      ],
                    ),
                  ),

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
