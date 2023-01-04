//03-Register_Step3
import 'package:flutter/material.dart';
import 'package:real_estate/loginpage/forgotpass.dart';

class smsscode extends StatefulWidget {
  const smsscode({Key? key}) : super(key: key);

  @override
  State<smsscode> createState() => _smsscodeState();
}

class _smsscodeState extends State<smsscode> {
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
                      image: AssetImage("images/BG1.png"), fit: BoxFit.fitWidth)),
            ),
            Container(
              height: th * 0.65,
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
                          "Enter the pin code",
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
                          "Enter the pin code you received by text msg",
                          style: TextStyle(
                              fontSize: th * 0.02, color: Color(0XFF8F92A1)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: th * 0.02,
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: th * 0.07,
                      width: tw * 0.85,
                      // color: Colors.orange,
                      child: TextFormField(
                        decoration:
                            InputDecoration(labelText: 'enter code'),
                      ),
                    ),
                    SizedBox(
                      height: th * .2,
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return forgotpass();
                      },));
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
