import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';
import 'package:gosportified/Utils/app_colors.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar:AppBar(
        title:MyText(
          text:'Profile Settings',fontSize:20,
          font:FontWeight.bold,
        ),

      ),
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  clipBehavior:Clip.none,
                  children: [
                    Container(
                    height:75,
                    width:75,
                    decoration:const BoxDecoration(
                      shape:BoxShape.circle,
                      image:DecorationImage(image: AssetImage('assets/Frame 155.png'))
                    ),
                  ),
                    Positioned(
                        bottom:7,
                        right:7,
                        child:Container(
                            height:20,
                            width:20,
                            decoration:BoxDecoration(
                              color:primaryLight,
                              shape:BoxShape.circle,
                              border:Border.all(
                                color:Colors.white
                              )
                            ),
                            child: const Icon(Icons.edit,size:15,color:Colors.white,))),
                  ]
                ),
              ),
              const SizedBox(height: 20,),
              MyText(text:'Name',fontSize:18,  font:FontWeight.bold,),
                TextFormField(
                decoration:const InputDecoration(
                  hintText:'James Leo',
                  suffixIcon:Icon(Icons.edit),
                  hintStyle:TextStyle(color:Colors.black45)
                ),
              ),
              const SizedBox(height: 20,),
              MyText(text:'Email',fontSize:18,  font:FontWeight.bold,),
              TextFormField(
                decoration:const InputDecoration(
                    hintText:'jamesleo385@gmail.com',
                    hintStyle:TextStyle(color:Colors.black45)
                ),
              ),
              const SizedBox(height: 20,),
              MyText(text:'Phone Number',fontSize:18,  font:FontWeight.bold,),
              TextFormField(
                decoration:const InputDecoration(
                    hintText:'+971 97893920',
                    hintStyle:TextStyle(color:Colors.black45)
                ),
              ),
              const SizedBox(height: 20,),
              MyText(text:'Password',fontSize:18,  font:FontWeight.bold,),
              TextFormField(
                decoration:const InputDecoration(
                    hintText:'*********',
                    suffixIcon:Icon(Icons.visibility),
                    hintStyle:TextStyle(color:Colors.black45)
                ),
              ),
              const SizedBox(height:150,),
              MyButton(text: 'Save Changes', onTap: (){})
            ],
          ),
        ),
      ),

    );
  }
}
