import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';

class CardDetailView extends StatelessWidget {
  const CardDetailView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar:Padding(
       padding: const EdgeInsets.all(20),
       child: MyButton(text: 'Save', onTap: (){}),
     ),
      appBar:AppBar(
        title:MyText(font:FontWeight.bold,text:'Card Details',fontSize:20,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [

            MyText(font:FontWeight.bold,text:'Add Card details',fontSize:23,),
            MyText(text:'Your transactions are secured and encrypted',fontSize:16,color:Colors.black45,),
            const SizedBox(height:30,),
            MyText(font:FontWeight.bold,text:'Card Number*',),
            MyFormField(horizonatlPadding:0,text: '120879389839'),
            MyText(font:FontWeight.bold,text:'Name on the Card*',),
            MyFormField(horizonatlPadding:0,text: 'Ex william'),
            MyText(font:FontWeight.bold,text:'Withdraw Method',),
            MyFormField(horizonatlPadding:0,text: 'Card'),
            const SizedBox(
              height:150,
            ),

          ],
        ),
      ),
    );
  }
}
