import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/AppModules/HomeModule/Views/home_view.dart';
import 'package:gosportified/AppModules/NotificationModule/Views/notification_view.dart';
import 'package:gosportified/AppModules/PaymentModule/View/wallet_view.dart';

import '../../../Utils/appColors.dart';
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'My Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

