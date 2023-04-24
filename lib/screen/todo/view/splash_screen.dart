import 'dart:async';

import 'package:exam_project/screen/todo/view/login_screen/sing_in.dart';
import 'package:flutter/material.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),) );
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(Colors.cyan.shade900), (Colors.cyan.shade900)])),
            child: Center(
              child:Text("Task Me",style: TextStyle(color: Colors.white,fontSize: 40),)
            ),
          ),
        ));
  }
}
