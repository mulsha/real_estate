import 'package:flutter/material.dart';
import 'package:real_estate/succespayment.dart';
import 'package:real_estate/summarypage.dart';

class mastercard extends StatefulWidget {
  const mastercard({Key? key}) : super(key: key);

  @override
  State<mastercard> createState() => _mastercardState();
}

class _mastercardState extends State<mastercard> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: th * 0.07),
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return summarypage();
                      },));
                    },
                      child: Container(
                        height: th * 0.055,
                        width: th * 0.055,
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: th * 0.027,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0XFF049FFF), shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      width: tw * 0.15,
                    ),
                    Container(
                      child: Text(
                        "PAYMENT PROCESS",
                        style: TextStyle(
                            fontSize: th * 0.025, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: th * 0.03,
                ),
                Container(
                  height: th * 0.3,
                  width: tw * 0.85,
                  decoration: BoxDecoration(
                      // color: Colors.orange,
                      image: DecorationImage(
                          image: AssetImage("images/ATMCard.png"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: th * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    child: Text(
                      "YOUR NAME",
                      style: TextStyle(
                          fontSize: th * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  height: th * 0.07,
                  width: tw * 0.85,
                  // color: Colors.orange,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'enter your name',
                    ),
                  ),
                ),
                SizedBox(
                  height: th * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    
                    child: Text(
                      "YOUR CARD NUMBER",
                      style: TextStyle(
                          fontSize: th * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  height: th * 0.07,
                  width: tw * 0.85,
                  // color: Colors.orange,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'XXXX-XXXX-XXXX-XXXX-XXX',
                    ),
                  ),
                ),
                SizedBox(
                  height: th * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "DATE",
                              style: TextStyle(
                                  fontSize: th * 0.02,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Container(
                          height: th * 0.07,
                          width: tw * 0.4,
                          // color: Colors.orange,
                          child: TextFormField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              labelText: 'DD.MM.RR',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "CVC",
                              style: TextStyle(
                                  fontSize: th * 0.02,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Container(
                          height: th * 0.07,
                          width: tw * 0.4,
                          // color: Colors.orange,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'XXX',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: th * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Old price",
                      style: TextStyle(
                          fontSize: th * 0.02, color: Color(0XFF662E3034)),
                    ),
                    Spacer(),
                    Text(
                      "\$350",
                      style: TextStyle(
                          fontSize: th * 0.028,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF662E3034)),
                    ),
                    Text(
                      "/night",
                      style: TextStyle(
                          fontSize: th * 0.02, color: Color(0XFF662E3034)),
                    )
                  ],
                ),
                SizedBox(
                  height: th * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Total pay",
                      style: TextStyle(
                          fontSize: th * 0.02, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "\$150",
                      style: TextStyle(
                          fontSize: th * 0.028, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "/night",
                      style: TextStyle(
                        fontSize: th * 0.02,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: th * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return succespayment();
                      },
                    ));
                  },
                  child: Container(
                    height: th * 0.07,
                    width: tw * 0.8,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        color: Color(0XFF049FFF),
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next step",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: th * 0.025),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
