import 'package:exam_project/utils/shred.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _Page1State();
}

class _Page1State extends State<SignIn> {
  TextEditingController txtuseremail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 772,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.cyan.shade900,)
              ),
              Padding(
                padding: EdgeInsets.only(top: 90, left: 30, right: 30),
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [

                            SizedBox(height: 50,),
                            TextField(
                              controller: txtuseremail,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                  hintText: "    Email ID",
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: txtpassword,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  hintText: "    Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              height: 50,
                              width: 250,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff192841),
                                  ),
                                  onPressed: () async {
                                    String useremail = txtuseremail.text;
                                    String userpassword = txtpassword.text;

                                    Shr shr = Shr();
                                    Map m1 = await shr.readShr();

                                    print(("${m1['e1']}-${m1['p1']}"));

                                    if (useremail == m1['e1'] &&
                                        userpassword == m1['p1']) {
                                      Navigator.pushNamed(context, '5');
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                              content:
                                              Text("Invaild Id or Password")));
                                    }
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 17),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
