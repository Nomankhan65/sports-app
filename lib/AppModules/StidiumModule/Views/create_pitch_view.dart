import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';

class CreatePitchView extends StatelessWidget {
  const CreatePitchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(font:FontWeight.bold,text:'Create Pitch',fontSize:20,),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MyText(font:FontWeight.bold,text:'Pitch',fontSize:18,),
                MyText(font:FontWeight.bold,text:'* ',fontSize:18,color:Colors.red,),
              ],
            ),
            MyFormField(horizonatlPadding:0,text:'Pitch Name'),
            Row(
              children: [
                MyText(font:FontWeight.bold,text:' Location of Stadium ',fontSize:18,),
                MyText(font:FontWeight.bold,text:'* ',fontSize:18,color:Colors.red,),
              ],
            ),
            MyFormField(horizonatlPadding:0,text:'Enter Rate Amount in AED '),
            Row(
              children: [
                MyText(font:FontWeight.bold,text:'Peak Hours Rate',fontSize:18,),
                MyText(font:FontWeight.bold,text:'* ',fontSize:18,color:Colors.red,),
              ],
            ),
            const SizedBox(height:5,),
            Container(height:25,width:300,decoration: BoxDecoration(
              color:const Color(0xffF3F3F3),
              borderRadius:BorderRadius.circular(5),
            ),
            child:Center(child: MyText(text:'Use the hourly rate if peak hours don’t apply',fontSize:12,)),
            ),
            MyFormField(horizonatlPadding:0,text:'Enter Rate Amount in AED '),
            const SizedBox(height:20,),
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
                    MyText(font:FontWeight.bold,text:'Peak Hours Slots',fontSize:18,),
                    InkWell(
                      onTap:(){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:Center(child: MyText(text:'Peak Hours',fontSize:32,font:FontWeight.bold,)),
                              content:Column(
                                mainAxisSize:MainAxisSize.min,
                                children: [
                                  Container(
                                height:50,
                                width:310,
                                decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(10),
                                    border:Border.all(
                                        color:primaryLight
                                    )
                                ),
                                  child:Center(child: MyText(text:'10:00 AM - 11:00 AM',color:primaryLight,fontSize:16,)),
                                ),
                                  const SizedBox(height:20,),
                                  Container(
                                    height:50,
                                    width:310,
                                    decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(10),
                                        border:Border.all(
                                            color:const Color(0xffE5E5E5)
                                        )
                                    ),
                                    child:Center(child: MyText(text:'11:00 AM - 12:00 AM',color:Colors.black45,fontSize:16,)),
                                  ),
                                  const SizedBox(height:20,),
                                  Container(
                                    height:50,
                                    width:310,
                                    decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(10),
                                        border:Border.all(
                                            color:const Color(0xffE5E5E5)
                                        )
                                    ),
                                    child:Center(child: MyText(text:'12:00 AM - 01:00 AM',color:Colors.black45,fontSize:16,)),
                                  )

                                ],
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap:(){
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height:35,
                                        width:140,
                                        decoration:BoxDecoration(
                                            borderRadius:BorderRadius.circular(10),
                                            border:Border.all(
                                                color:primaryLight
                                            )
                                        ),
                                        child:Center(child: MyText(text:'Cancel',color:primaryLight,fontSize:18,)),
                                      ),
                                    ),
                                    Container(
                                      height:35,
                                      width:140,
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(10),
                                          color:primaryLight
                                      ),
                                      child:Center(child: MyText(text:'OK',color:Colors.white,fontSize:18,)),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        );
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
            const SizedBox(height:150,),
            MyButton(text: 'Save', onTap: (){})


          ],
        ),
      ),
    );
  }
}
