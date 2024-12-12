import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/myButton.dart';
import '../../../Widgets/myFormField.dart';
import '../../../Widgets/myText.dart';

class CardDetailView extends StatelessWidget {
  const CardDetailView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar:AppBar(
        title:MyText(text:'Card Details',fontSize:20,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [

            MyText(text:'Add Card details',fontSize:23,),
            MyText(text:'Your transactions are secured and encrypted',fontSize:16,color:Colors.black45,),
            const SizedBox(height:30,),
            MyText(text:'Card Number*',),
            MyFormField(horizonatlPadding:0,text: '120879389839'),
            MyText(text:'Name on the Card*',),
            MyFormField(horizonatlPadding:0,text: 'Ex william'),
            MyText(text:'Withdraw Method',),
            MyFormField(horizonatlPadding:0,text: 'Card'),
            const SizedBox(
              height:150,
            ),
            MyButton(text: 'Save', onTap: (){})
          ],
        ),
      ),
    );
  }
}
