import 'package:flutter/material.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(height: 780,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [(Color(0xff00316E)),Color(0xff001C57)]
            )
          ),),
          Padding(padding: EdgeInsets.only(top: 230,left: 50,right: 50),
          child: Image.asset("assets/image/img.png"),),
          Padding(
            padding: const EdgeInsets.only(top: 650,left: 3,right: 3),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '2');
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                          ),child: Center(child: Text("Api Calling",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '3');
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                          ),child: Center(child: Text("ToDo",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '7');
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                          ),child: Center(child: Text("Slider",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
