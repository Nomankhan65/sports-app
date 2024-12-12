import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class ManageTimeView extends StatefulWidget {
    const ManageTimeView({super.key});

  @override
  State<ManageTimeView> createState() => _ManageTimeViewState();
}

class _ManageTimeViewState extends State<ManageTimeView> {
  late DateTime _selectedDate;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _calendarFormat = CalendarFormat.month;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:MyText(text:'Manage Time',),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime(2000),
        lastDay: DateTime(2101),
        focusedDay: _selectedDate,
        selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDate = selectedDay;
          });
        },
        calendarFormat: _calendarFormat,
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
            ),

             const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText(text:'10:00 AM - 11:00 AM',color:primaryLight,fontSize:16,),
                Container(
                  height:30,
                  width:90,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    color:primaryLight,
                  ),
                  child:Center(child: MyText(text:'Booked',color:Colors.white,)),
        
                )
              ],
            ),
          ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text:'11:00 AM - 12:00 AM',color:Colors.black45,fontSize:16,),
                  Container(
                    height:30,
                    width:90,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                      border:Border.all(
                        color:Colors.black54
                      ),
                    ),
                    child:Center(child: MyText(text:'Free',color:Colors.black54,)),
        
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text:'01:00 AM - 02:00 AM',color:primaryLight,fontSize:16,),
                  Container(
                    height:30,
                    width:90,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                      color:primaryLight,
                    ),
                    child:Center(child: MyText(text:'Booked',color:Colors.white,)),
        
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text:'11:00 AM - 12:00 AM',color:Colors.black45,fontSize:16,),
                  Container(
                    height:30,
                    width:90,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                      border:Border.all(
                          color:Colors.black54
                      ),
                    ),
                    child:Center(child: MyText(text:'Free',color:Colors.black54,)),
        
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text:'03:00 AM - 04:00 AM',color:primaryLight,fontSize:16,),
                  Container(
                    height:30,
                    width:90,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                      color:primaryLight,
                    ),
                    child:Center(child: MyText(text:'Booked',color:Colors.white,)),
        
                  )
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height:200,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MyButton(text: 'Save', onTap: (){}),
            )
          ],
        ),
      ),
    );
  }
}
