import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';

import 'card_detail_view.dart';

class WithdrawDetailView extends StatelessWidget {
  const WithdrawDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(20),
        child: MyButton(text: 'Withdraw', onTap: (){}),
      ),
      appBar:AppBar(
        title:MyText( font:FontWeight.bold,text:'Withdraw Detail',fontSize:20,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText( font:FontWeight.bold,text:'Request Withdraw',fontSize:18,),
                InkWell(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>const CardDetailView()));
                  },
                  child: Container(
                    height: 31,
                    width:110,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      border:Border.all(
                        color:primaryLight
                      ),
                    ),
                    child:Center(child: MyText( font:FontWeight.bold,text:'Add New Card',color:primaryLight,fontSize:12,)),
                  ),
                )
              ],
            ),
            const SizedBox(height:20,),
            MyText(text:'Available Balance', font:FontWeight.bold,),
            MyFormField(horizonatlPadding:0,text: 'AED 300'),
            MyText(text:'Withdraw Amount', font:FontWeight.bold,),
            MyFormField(horizonatlPadding:0,text: 'Enter Amount in AED'),
            MyText(text:'Withdraw Method', font:FontWeight.bold,),
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
