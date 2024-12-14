import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/AppModules/AuthModule/Views/signIn_view.dart';

class OnboardingViewTwo extends StatelessWidget {
  const OnboardingViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior:Clip.none,
        children: [
          // First Image
          Container(
              height:MediaQuery.sizeOf(context).height*0.6,
              width: double.infinity,
              decoration:const BoxDecoration(
                  image:DecorationImage(fit:BoxFit.cover, image:AssetImage('assets/map.png'))
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height:50,),
                  const Image(image: AssetImage('assets/Location.png')),
                  const SizedBox(height:50,),
                  const Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      const SizedBox(width:30,),
                      Image(image: AssetImage('assets/Location.png')),
                      const SizedBox(width:280,),
                      Image(image: AssetImage('assets/Location.png'))
                    ],),
                  const Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      SizedBox(width:80,),
                      Image(image: AssetImage('assets/Location.png')),
                    ],
                  ),
                  Image.asset('assets/person.png'),
                  const SizedBox(height:40,),
                  const Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Image(image: AssetImage('assets/Location.png')),
                      Image(image: AssetImage('assets/Location.png'))
                    ],),
                ],
              )
          ),
          // Stack with Positioned Image
          Positioned(
            left:0,right:0,
            top:MediaQuery.sizeOf(context).height*0.5,
            child: Container(
              height:MediaQuery.sizeOf(context).height*0.5,
              width:double.infinity,// Define a fixed height for the Stack
              decoration:const BoxDecoration(
                borderRadius:BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
                image:DecorationImage( fit:BoxFit.cover,image: AssetImage('assets/Frame 156.png')),
              ),
            ),
          ),
          Align(
              alignment:Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20,vertical:1),
                child: SizedBox(
                  height:77,
                  width:77,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                          backgroundColor:Colors.grey.withOpacity(0.2)
                      ),
                      onPressed: (){

                        Navigator.push(context,MaterialPageRoute(builder: (_)=>const SignInView()));
                      }, child:const Icon(Icons.arrow_forward,color:Colors.white,)),
                ),
              ))

        ],
      ),
    );
  }
}
