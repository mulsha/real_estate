//02-Login_Password
import 'package:flutter/material.dart';
import 'package:real_estate/bottomsheet/bottomsheet.dart';

import 'package:real_estate/loginpage/forgotpass.dart';

class passwordpage extends StatefulWidget {
  const passwordpage({Key? key}) : super(key: key);

  @override
  State<passwordpage> createState() => _passwordpageState();
}

class _passwordpageState extends State<passwordpage> {
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
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Container(
                padding: EdgeInsets.all(5),
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
                          "Enter your password",
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
                          "PASSWORD",
                          style: TextStyle(
                              fontSize: th * 0.022,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: th * 0.07,
                      width: tw * 0.85,
                      // color: Colors.orange,
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'password',
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                    SizedBox(
                      height: th * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return bottompage();
                          },
                        ));
                      },
                      child: Container(
                        height: th * 0.07,
                        width: tw * 0.85,
                        child: Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: th * 0.025,
                              color: Colors.white,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        )),
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
                            return forgotpass();
                          },
                        ));
                      },
                      child: Container(
                        height: th * 0.07,
                        width: tw * 0.85,
                        child: Center(
                            child: Text(
                          "Forgot password",
                          style: TextStyle(
                              fontSize: th * 0.025,
                              color: Colors.black,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500),
                        )),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                    SizedBox(
                      height: th * 0.03,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
