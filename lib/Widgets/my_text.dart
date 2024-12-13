import 'package:flutter/cupertino.dart';

class MyText extends StatelessWidget {
  var text;
  double? fontSize;
  Color? color;
  int maxlines;
  double? spacing;
  var font;
  MyText({super.key,this.text,this.fontSize,this.color,this.spacing,this.maxlines=1,this.font});

  @override
  Widget build(BuildContext context) {
    return Text(text,maxLines:maxlines,style:TextStyle(
        fontSize:fontSize,
        color:color,
        letterSpacing:spacing,
        fontFamily:'Mulish',
        overflow:TextOverflow.ellipsis,
        fontWeight:font

    ),);
  }
}