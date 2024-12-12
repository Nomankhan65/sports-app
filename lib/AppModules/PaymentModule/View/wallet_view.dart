import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/AppModules/PaymentModule/View/withdraw_detail_view.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import '../../../Utils/appColors.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryLight,
        title: MyText(
          text: 'Wallet Details',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 215,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'My Wallet Details',
                      fontSize: 18,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Total Earnings',
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                        MyText(
                          text: 'AED 8000',
                          fontSize: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Available Balance',
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                        MyText(
                          text: 'AED 3000',
                          fontSize: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Withdrawal Amount',
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                        MyText(
                          text: 'AED 5000',
                          fontSize: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Pending',
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                        MyText(
                          text: 'AED 4000',
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'Transaction History: ',
                  fontSize: 20,
                ),
                Container(
                  height: 29,
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black45)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.document_scanner_outlined,
                        size: 18,
                        color: primaryLight,
                      ),
                      MyText(
                        text: 'Export CSV',
                        fontSize: 12,
                        color: Colors.black45,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 225,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 33,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryLight,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width:15,),
                        MyText(
                          text: 'Description',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(width:60,),
                        MyText(
                          text: 'Date',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(width:70,),
                        MyText(
                          text: 'Amount',
                          fontSize: 15,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Table(
                    border: TableBorder.all(
                        color: Colors
                            .black26), // Optional: Adds border to the table
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                text: 'Match Booking Fee',
                                fontSize: 12,
                                color: Colors.black54,
                              )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '24 June 2024' ,
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '+ AED 500  ',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: 'Withdrawal ',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '25 June 2024' ,
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '+ AED 600  ',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: 'Match Booking Fee',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '24 June 2024' ,
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '+ AED 500  ',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: 'Withdrawal ',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '25 June 2024' ,
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                          TableCell(
                            child: SizedBox(
                              height:40,
                              child: Center(
                                  child: MyText(
                                    text: '+ AED 600  ',
                                    fontSize: 12,
                                    color: Colors.black54,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height:100,
            ),
            MyButton(text: 'Request New Withdraw', onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (_)=>const WithdrawDetailView()));
            })
          ],
        ),
      ),
    );
  }
}
