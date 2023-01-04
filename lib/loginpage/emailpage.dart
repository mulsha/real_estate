// 01-Login_Email
import 'package:flutter/material.dart';
import 'package:real_estate/loginpage/createaccount.dart';
import 'package:real_estate/loginpage/passwordpage.dart';

class emailpage extends StatefulWidget {
  const emailpage({Key? key}) : super(key: key);

  @override
  State<emailpage> createState() => _emailpageState();
}

class _emailpageState extends State<emailpage> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: th * 0.592,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background.png"),
                      fit: BoxFit.fitWidth)),
            ),
            Container(
              height: th * 0.57,
              width: tw * 1.0,
              margin: EdgeInsets.only(top: th * .46),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: Column(
                children: [
                  SizedBox(
                    height: th * 0.045,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontSize: th * 0.035,
                            fontFamily: 'pushpins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Enter your email or number",
                        style: TextStyle(
                            fontSize: th * 0.02, color: Color(0XFF8F92A1)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "EMAIL OR MOBILE NUMBER",
                        style: TextStyle(
                            fontSize: th * 0.022,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    height: th * 0.07,
                    width: tw * 0.85,
                    // color: Colors.orange,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'enter email',
                          suffixIcon: Icon(Icons.done)),
                    ),
                  ),
                  SizedBox(
                    height: th * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return passwordpage();
                        },
                      ));
                    },
                    child: Container(
                      height: th * 0.07,
                      width: tw * 0.85,
                      child: Center(
                        child: Text(
                          "Next step",
                          style: TextStyle(
                              fontSize: th * 0.025,
                              color: Colors.white,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff049FFF),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  SizedBox(
                    height: th * 0.02,
                  ),
                  Text(
                    "or",
                    style: TextStyle(fontSize: th * 0.022),
                  ),
                  SizedBox(
                    height: th * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return createaccount();
                        },
                      ));
                    },
                    child: Container(
                      height: th * 0.07,
                      width: tw * 0.85,
                      child: Center(
                        child: Text(
                          "Create an account",
                          style: TextStyle(
                            fontSize: th * 0.025,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: th * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By signing in you agree to our",
                        style: TextStyle(
                            fontSize: th * 0.02, color: Color(0XFF8F92A1)),
                      ),
                      Text(
                        "Terms of Service",
                        style: TextStyle(
                            fontSize: th * 0.02, color: Color(0XFF049FFF)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
