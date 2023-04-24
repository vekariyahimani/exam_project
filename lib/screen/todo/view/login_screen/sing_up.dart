import 'package:exam_project/utils/shred.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _Page1State();
}

class _Page1State extends State<SignUp> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 790,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.cyan.shade900
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90, left: 30, right: 30),
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            TextField(
                              controller: txtemail,
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
                                  onPressed: () {
                                    var email = txtemail.text;
                                    var password = txtpassword.text;
                                    Shr shr = Shr();
                                    shr.creatShr(email, password);
                                    Navigator.pushNamed(context, '6');
                                  },
                                  child: Text(
                                    "Sign UP",
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
