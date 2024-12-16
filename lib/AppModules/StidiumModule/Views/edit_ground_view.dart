import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';


class EditGroundView extends StatefulWidget {
  const EditGroundView({super.key});

  @override
  State<EditGroundView> createState() => _EditGroundViewState();
}

class _EditGroundViewState extends State<EditGroundView> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  bool val=true;
  bool cricketVal = false;
  bool footballVal = false;
  bool golfVal = false;
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
        title:MyText(font:FontWeight.bold,text:'Edit Stadium',fontSize:20,),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MyText(  font:FontWeight.bold,text:' Stadium Name',fontSize:18,),
                  MyText(  font:FontWeight.bold,text:'*',fontSize:18,color:Colors.red,),
                ],
              ),
              MyFormField(horizonatlPadding:0,text:'National ABC Stadium'),
              Row(
                children: [
                  MyText(  font:FontWeight.bold,text:' Location of Stadium',fontSize:18,),
                  MyText(  font:FontWeight.bold,text:'*',fontSize:18,color:Colors.red,),
                ],
              ),
              MyFormField(horizonatlPadding:0,text:'Golf Sports Academy, Dubai ~ 05.56 kms'),
              const SizedBox(height:10,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          MyText(  font:FontWeight.bold,text:'Opening Time',fontSize:18,),
                          MyText(  font:FontWeight.bold,text:'*',fontSize:18,color:Colors.red,),
                        ],
                      ),
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
                      Row(
                        children: [
                          MyText(  font:FontWeight.bold,text:'Closing Time',fontSize:18,),
                          MyText(  font:FontWeight.bold,text:'*',fontSize:18,color:Colors.red,),
                        ],
                      ),
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
              MyText(text:' National XYZ Stadium',fontSize:18,font:FontWeight.bold,),
              const SizedBox(height:10,),
              Container(
                decoration:BoxDecoration(
                    color:const Color(0xffF3F3F3),
                    borderRadius:BorderRadius.circular(15)
                ),
                child: ExpansionTile(
                  title: const Text(
                    'Game Types',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textColor: Colors.black54,
                  iconColor: Colors.black54,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Align(
                        alignment:Alignment.topLeft,
                          child: MyText(text:'Cricket',fontSize:18,font:FontWeight.bold,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Align(
                          alignment:Alignment.topLeft,
                          child: MyText(text:'Cricket',fontSize:18,font:FontWeight.bold,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Align(
                          alignment:Alignment.topLeft,
                          child: MyText(text:'Cricket',fontSize:18,font:FontWeight.bold,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                      child: Align(
                          alignment:Alignment.topLeft,
                          child: MyText(text:'+Add Game',fontSize:18,font:FontWeight.bold,color:primaryLight,)),
                    ),

                  ],
                ),
              ),
        
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: MyButton(text: 'Save', onTap: (){}),
      ),
    );
  }
}
