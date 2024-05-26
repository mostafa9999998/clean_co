import 'package:clean_co/ui_view/Login/login%20view/login%20screen.dart';
import 'package:clean_co/ui_view/Rigester/Register%20view/register%20screen.dart';
import 'package:flutter/material.dart';

import '../ui_view/on_boarding_view/on_boarding_view.dart';

class AppRoutes
{
  static String initialRoute=OnBoardingView.routeName;
  static var appRoutes = <String, WidgetBuilder>
  {
    OnBoardingView.routeName:(context)=>OnBoardingView(),
    LoginScreen.loginScreenname : (_) => LoginScreen(),
    RegisterScreen.registerScreenname : (_) => RegisterScreen()
  };
}