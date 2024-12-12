import 'package:flutter/material.dart';
import '../res/components/myText.dart';
import 'package:gosportified/view/signIn_view.dart';
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

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
             child:Center(
               child:Image.asset('assets/person.png'),
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
                image:DecorationImage( fit:BoxFit.cover,image: AssetImage('assets/sports-stadium 1.png')),
              ),
              child:  Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,57,0,0),
                    child:MyText(text:'Efficiently Manage Your Stadium Operations',fontSize:28,maxlines:2,),
                  ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(20,15,0,0),
                    child:MyText(text:'Add and manage stadiums, pitches, and bookings.',fontSize:15,maxlines:2,color:Colors.black54,)
                  ),

                ],
                
              ),
            ),
          ),
          Align(
              alignment:Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height:70,
                  width:70,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor:Colors.black12
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

 
