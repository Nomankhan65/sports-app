import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/Utils/appColors.dart';

import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';

class AddgroundScreen extends StatefulWidget {
  const AddgroundScreen({super.key});

  @override
  State<AddgroundScreen> createState() => _AddgroundScreenState();
}

class _AddgroundScreenState extends State<AddgroundScreen> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  bool val=true;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(text:'Add Stadium',fontSize:20,),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            MyText(text:' Stadium Name* ',fontSize:18,),
            MyFormField(horizonatlPadding:0,text:'National ABC Stadium'),
            MyText(text:' Location of Stadium* ',fontSize:18,),
            MyFormField(horizonatlPadding:0,text:'Golf Sports Academy, Dubai ~ 05.56 kms'),
            const SizedBox(height:10,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    MyText(text:'Opening Time*',fontSize:18,),
                    const SizedBox(height:10,),
                    InkWell(
                      onTap:()=>_selectTime(context),
                      child: Container(height:65,width:183,decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:const Color(0xffF3F3F3)
                      ),
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                        children: [
                          MyText(text:_selectedTime.format(context),fontSize:15,color:Colors.black54,),
                          const Icon(Icons.watch_later_outlined,color:Colors.black54,)
                        ],
                      ),
                      ),
                    ),

                  ],
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    MyText(text:'Opening Time*',fontSize:18,),
                    const SizedBox(height:10,),
                    InkWell(
                      onTap:()=>_selectTime(context),
                      child: Container(height:65,width:183,decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(15),
                          color:const Color(0xffF3F3F3)
                      ),
                        child:Row(
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                            MyText(text:_selectedTime.format(context),fontSize:15,color:Colors.black54,),
                            const Icon(Icons.watch_later_outlined,color:Colors.black54,)
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
            const SizedBox(height:20,),
            MyText(text:' Types of Games* ',fontSize:18,),
            const SizedBox(height:10,),
            Container(
              height:240,
              width:double.infinity,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(15),
                color:const Color(0xffF3F3F3)
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical:20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: [
                        MyText(text:'Games Types',color:Colors.black54,),
                        const Icon(Icons.arrow_drop_up,color:Colors.black54,)
                      ],
                    ),
                    SizedBox(height:15,),
                    Divider(),
                    Row(
                      children: [
                        Checkbox(
                          activeColor:primaryLight,
                            value:val, onChanged: (v){
                          setState(() {
                            val!=v;
                          });

                        }),
                        MyText(text:'Cricket',)
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor:primaryLight,
                            value:val, onChanged: (v){
                          setState(() {
                            val!=v;
                          });

                        }),
                        MyText(text:'Football',)
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor:primaryLight,
                            value:val, onChanged: (v){
                          setState(() {
                            val!=v;
                          });

                        }),
                        MyText(text:'Golf',)
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height:30,),
            MyButton(text: 'Save', onTap: (){})


          ],
        ),
      ),
    );
  }
}
