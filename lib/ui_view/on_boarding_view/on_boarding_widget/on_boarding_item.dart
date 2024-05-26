import 'package:flutter/material.dart';

import '../on_boarding_model/on_boarding_model.dart';

Widget onBoardingItem(OnBoardingModel model,context)=>Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children:
  [
    Expanded(child: Image(image: AssetImage('${model.image}'))),
    Text('${model.title}',
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
    SizedBox(height: 20,),
    Center(
      child: Text('${model.body}',
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
      ),
    ),
    SizedBox(height: 20,)
  ],
);