import 'package:flutter/material.dart';

class LogWith extends StatelessWidget {
  LogWith({super.key,required this.text,required this.Imagepath});
  String text;
  String Imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width*.43 ,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(4.0,9.0)
            )
          ]
      ),
      padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.02 ,
          vertical:MediaQuery.of(context).size.height*.02 ),
    child: Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.02,),
        Container(
          height:MediaQuery.of(context).size.height*.03 ,
          child:Image.asset(Imagepath,fit: BoxFit.fill,),),
        SizedBox(width: MediaQuery.of(context).size.width*.07,),
        Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),

      ],
    ),
    );
  }
}
