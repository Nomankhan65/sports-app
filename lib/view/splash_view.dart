
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosportified/view/signIn_view.dart';

import '../res/appColors.dart';
import 'onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:2), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const OnBoardingView()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:primaryLight,
       body: Center(
         child: SizedBox(
           height:198,
           width:159 ,

          child:Image.asset('assets/Frame.png'),
               ),
       ),
    );
  }
}
