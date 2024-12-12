import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../res/components/myButton.dart';
import '../res/components/myFormField.dart';
import '../res/components/myText.dart';
import 'package:gosportified/res/appColors.dart';
import 'package:gosportified/view/card_detail_view.dart';

class WithdrawDetailView extends StatelessWidget {
  const WithdrawDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:MyText(text:'Withdraw Detail',fontSize:20,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText(text:'Request Withdraw',fontSize:18,),
                InkWell(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>const CardDetailView()));
                  },
                  child: Container(
                    height: 31,
                    width:107,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                      border:Border.all(
                        color:primaryLight
                      ),
                    ),
                    child:Center(child: MyText(text:'Add New Card',color:primaryLight,fontSize:12,)),
                  ),
                )
              ],
            ),
            const SizedBox(height:20,),
            MyText(text:'Available Balance',),
            MyFormField(horizonatlPadding:0,text: 'AED 300'),
            MyText(text:'Withdraw Amount',),
            MyFormField(horizonatlPadding:0,text: 'Enter Amount in AED'),
            MyText(text:'Withdraw Method',),
            MyFormField(horizonatlPadding:0,text: 'Card'),
            const SizedBox(
              height:150,
            ),
            MyButton(text: 'Withdraw', onTap: (){})
          ],
        ),
      ),
    );
  }
}
