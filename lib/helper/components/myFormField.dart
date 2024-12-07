import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  double horizonatlPadding, verticalPadding;
  String text;
    MyFormField({super.key,this.horizonatlPadding=20,this.verticalPadding=10, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizonatlPadding, vertical:verticalPadding),
      child: SizedBox(
        height:65,
        child: TextFormField(
          cursorColor: Colors.lightBlue,
          decoration: InputDecoration(
              fillColor:const Color(0xffF3F3F3),
              filled: true,
              hintText:text,
              hintStyle: const TextStyle( color:Colors.black26,fontSize:14,fontFamily:'Mulish'),

              enabledBorder:OutlineInputBorder(
                borderRadius:BorderRadius.circular(15),
                borderSide:const BorderSide(
                  color:Colors.white,
                )
              ),
              focusedBorder:const OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(15)),
                  borderSide:BorderSide(
                    color:Colors.white,
                  )
              )

          ),

        ),
      ),
    );
  }
}
