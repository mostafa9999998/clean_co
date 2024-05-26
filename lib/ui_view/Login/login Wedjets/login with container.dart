import 'package:flutter/material.dart';

class LogWith extends StatelessWidget {
  LogWith({super.key,required this.text,required this.Imagepath});
  String text;
  String Imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.02 ,
          vertical:MediaQuery.of(context).size.height*.02 ),
    child: Row(
      children: [
        Container(
          height:MediaQuery.of(context).size.height*.02 ,
          child:Image.asset(Imagepath,fit: BoxFit.fill,),),
        SizedBox(width: MediaQuery.of(context).size.width*.02,),
        Text(text,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),

      ],
    ),
    );
  }
}
