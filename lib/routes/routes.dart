import 'package:flutter/material.dart';

import '../ui_view/on_boarding_view/on_boarding_view.dart';

class AppRoutes
{
  static String initialRoute=OnBoardingView.routeName;
  static var appRoutes = <String, WidgetBuilder>
  {
    OnBoardingView.routeName:(context)=>OnBoardingView(),
  };
}