import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gosportified/AppModules/HomeModule/Views/home_view.dart';
import 'package:gosportified/AppModules/NotificationModule/Views/notification_view.dart';
import 'package:gosportified/AppModules/PaymentModule/View/wallet_view.dart';

import '../../../Utils/app_colors.dart';
import '../../ProfileModule/Views/account_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0; // Variable to track the selected tab index

  static const List<Widget> screenList = [
    HomeView(),
    NotificationView(),
    WalletView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex], // Display the screen based on the selected index
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex, // Active tab index
        selectedItemColor: primaryLight, // Replace with `primaryLight` if it's a defined color
        selectedLabelStyle: const TextStyle(fontFamily: 'Mulish'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Mulish'),
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the selected tab index
          });
        },
        items: [
          BottomNavigationBarItem(
              icon:SvgPicture.asset(currentIndex==0?'assets/HomeActive.svg':'assets/Home.svg'),
              label:'Home'
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(currentIndex==1?'assets/notificationActive.svg':'assets/notification.svg'),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(currentIndex==2?'assets/walletActive.svg':'assets/wallet.svg'),
            label:'Wallet'
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(currentIndex==3?'assets/accountActive.svg':'assets/account.svg'),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

