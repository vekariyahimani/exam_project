import 'package:exam_project/screen/frist_screen/navigation_screen.dart';
import 'package:exam_project/screen/get_api/provider/home_provider.dart';
import 'package:exam_project/screen/get_api/view/home_screen.dart';
import 'package:exam_project/screen/slider/view/page1.dart';
import 'package:exam_project/screen/todo/view/login_screen/sing_in.dart';
import 'package:exam_project/screen/todo/view/login_screen/sing_up.dart';
import 'package:exam_project/screen/todo/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => NavigationScreen(),
          '2':(context) => HomeScreen(),
          '3': (context) => SplshScreen(),
          '4':(context) => SignIn(),
          '5':(context) => SignUp(),
          '6':(context) => SplshScreen(),
          '7':(context) => Page1(),

        },
      ),
    )
  );
}