//02-Register_Step2
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_estate/passwordpages/smscode.dart';

class smsmsg extends StatefulWidget {
  const smsmsg({Key? key}) : super(key: key);

  @override
  State<smsmsg> createState() => _smsmsgState();
}

class _smsmsgState extends State<smsmsg> {
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
                      image: AssetImage("images/BG1.png"),
                      fit: BoxFit.fitWidth)),
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
                          "Confirm via SMS",
                          style: TextStyle(
                              fontSize: th * 0.033,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          "Enter your phone number to confirm your account",
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
                      margin: EdgeInsets.only(top: 10),
                      height: th * 0.07,
                      width: tw * 0.85,
                      // color: Colors.orange,
                      child: TextFormField(inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'enter phone number'),
                      ),
                    ),
                    SizedBox(
                      height: th * .17,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return smsscode();
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
