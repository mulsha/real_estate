//01-Forgot_password
import 'package:flutter/material.dart';
import 'package:real_estate/loginpage/passwordcode.dart';

class forgotpass extends StatefulWidget {
  const forgotpass({Key? key}) : super(key: key);

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
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
                      image: AssetImage("images/BG2.png"),
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
                          "Forgot your password?",
                          style: TextStyle(
                              fontSize: th * 0.033,
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
                          "Enter your phone number to confirm your \nidentity",
                          style: TextStyle(
                              fontSize: th * 0.02, color: Color(0XFF8F92A1)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: th * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "PHONE NUMBER",
                          style: TextStyle(
                              fontSize: th * 0.025,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6),
                      height: th * 0.07,
                      width: tw * 0.85,
                      // color: Colors.orange,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'enter phone number',
                            suffixIcon: Icon(Icons.done)),
                      ),
                    ),
                    SizedBox(
                      height: th * .17,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return passwordcode();
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
