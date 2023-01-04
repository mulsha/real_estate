//01-Register_Step1
import 'package:flutter/material.dart';
import 'package:real_estate/loginpage/smsmsg.dart';

class createaccount extends StatefulWidget {
  const createaccount({Key? key}) : super(key: key);

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
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
                          "Create new account",
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
                          "Fill these form and jump to next step",
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
                          "EMAIL",
                          style: TextStyle(
                              fontSize: th * 0.02,
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
                            labelText: 'enter email',
                            suffixIcon: Icon(Icons.done)),
                      ),
                    ),
                    SizedBox(
                      height: th * 0.03,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "PASSWORD",
                          style: TextStyle(
                              fontSize: th * 0.02,
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
                            suffixIcon: Icon(
                              Icons.visibility,
                              size: th * 0.03,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: th * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return smsmsg();
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
