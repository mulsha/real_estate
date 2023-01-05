import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/bottomsheet/Home/01-Home.dart';
import 'package:real_estate/paymentpages/mastarcard.dart';

class summarypage extends StatefulWidget {
  const summarypage({Key? key}) : super(key: key);

  @override
  State<summarypage> createState() => _summarypageState();
}

class _summarypageState extends State<summarypage> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: th * 0.07),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return home();
                    //   },
                    // ));
                    Get.back();
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
                  width: tw * 0.2,
                ),
                Container(
                  child: Text(
                    "SUMMARY",
                    style: TextStyle(
                        fontSize: th * 0.025, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
              height: th * 0.03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Text(
                "15 nights in Perfect Room",
                style: TextStyle(
                    fontSize: th * 0.022, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: th * 0.025,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: th * 0.23,
                      width: tw * 0.22,
                      decoration: BoxDecoration(
                          color: Color(0XFF332BACFC),
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 13),
                            height: th * 0.08,
                            width: th * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Jan",
                                  style: TextStyle(
                                      color: Color(0XFF8F92A1),
                                      fontSize: th * 0.02),
                                ),
                                Text(
                                  "21",
                                  style: TextStyle(fontSize: th * 0.022),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: th * 0.02,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: th * 0.08,
                            width: th * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Nov",
                                  style: TextStyle(
                                      color: Color(0XFF8F92A1),
                                      fontSize: th * 0.02),
                                ),
                                Text(
                                  "6",
                                  style: TextStyle(fontSize: th * 0.022),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 13),
                            height: th * 0.08,
                            width: th * 0.15,
                            decoration: BoxDecoration(
                                // color: Colors.orange,
                                ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Friday check in",
                                  style: TextStyle(
                                      color: Color(0XFF8F92A1),
                                      fontSize: th * 0.02),
                                ),
                                SizedBox(
                                  height: th * 0.01,
                                ),
                                Text(
                                  "1PM - 7PM",
                                  style: TextStyle(
                                      fontSize: th * 0.022,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: th * 0.02,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: th * 0.08,
                            width: th * 0.17,
                            decoration: BoxDecoration(
                                // color: Colors.green,
                                ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Tuesday check out",
                                  style: TextStyle(
                                      color: Color(0XFF8F92A1),
                                      fontSize: th * 0.02),
                                ),
                                SizedBox(
                                  height: th * 0.01,
                                ),
                                Text(
                                  "1PM - 7PM",
                                  style: TextStyle(
                                      fontSize: th * 0.022,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: th * 0.025,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Text(
                "Fee & Tax Details",
                style: TextStyle(
                    fontSize: th * 0.022, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: th * 0.02,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "\$122 x 15 nights",
                      style: TextStyle(fontSize: th * 0.02),
                    ),
                    Spacer(),
                    Text(
                      "\$1.813",
                      style: TextStyle(
                          fontSize: th * 0.022, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: th * 0.02,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Service charges",
                      style: TextStyle(fontSize: th * 0.02),
                    ),
                    Spacer(),
                    Text(
                      "\$25",
                      style: TextStyle(
                          fontSize: th * 0.022, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: th * 0.035,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: th * 0.02),
                    ),
                    Spacer(),
                    Text(
                      "\$1.824",
                      style: TextStyle(
                          fontSize: th * 0.022, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: th * 0.03,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return mastercard();
                //   },
                // ));
                Get.to(mastercard());
              },
              child: Container(
                height: th * 0.07,
                width: tw * 0.85,
                decoration: BoxDecoration(
                    color: Color(0XFFE4E4E7),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("images/card.png")),
                    SizedBox(width: tw * 0.02),
                    Text(
                      "Pay with Master Card",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: th * 0.02),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: th * 0.03,
            ),
            Container(
              height: th * 0.07,
              width: tw * 0.85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  // color: Color(0XFFE4E4E7),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Other method ",
                    style: TextStyle(
                        color: Color(0XFF8F92A1),
                        fontWeight: FontWeight.w400,
                        fontSize: th * 0.02),
                  )
                ],
              ),
            ),
            SizedBox(
              height: th * 0.08,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return mastercard();
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
        ),
      ),
    );
  }
}
