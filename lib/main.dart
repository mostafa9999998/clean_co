
import 'package:bloc/bloc.dart';
import 'package:clean_co/routes/routes.dart';

import 'package:clean_co/utils/bloc_observer/bloc_observer.dart';
import 'package:clean_co/utils/cach_helper/cach_helper.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.appRoutes,

    );
  }
}


