import 'package:flutter/material.dart';

class reviewpage extends StatefulWidget {
  const reviewpage({Key? key}) : super(key: key);

  @override
  State<reviewpage> createState() => _reviewpageState();
}

class _reviewpageState extends State<reviewpage> {
  List propic = [
    "r1.png",
    "r2.png",
    "r3.png",
    "r4.png",
    "r1.png",
    "r2.png",
    "r3.png",
    "r4.png"
  ];

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: th * 0.05),
          Row(
            children: [
              Container(
                height: th * 0.055,
                width: th * 0.055,
                margin: EdgeInsets.only(left: 10),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: th * 0.04,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0XFF049FFF), shape: BoxShape.circle),
              ),
              SizedBox(width: tw * 0.05),
              Container(
                  height: th * 0.057,
                  width: tw * 0.72,
                  child: Center(
                      child: Text(
                    "REVIEW ABOUT JACK",
                    style: TextStyle(
                        fontSize: th * 0.023, fontWeight: FontWeight.w500),
                  )))
            ],
          ),
          Container(
            width: th * 0.8,
            height: th * 0.85,
            child: ListView.builder(
              itemCount: propic.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: th * 0.2,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: th * 0.18,
                        width: tw * 0.2,
                        child: Container(
                          height: th * 0.01,
                          width: th * 0.01,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/${propic[index]}"),
                              ),
                              // color: Colors.yellow,
                              shape: BoxShape.circle),
                        ),
                        // decoration: BoxDecoration(color: Colors.orange),
                      ),
                      SizedBox(
                        width: tw * 0.02,
                      ),
                      Container(
                        height: th * 0.18,
                        width: tw * 0.71,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Text(
                                  "I highly recommend this host, really \nclean apartments, everything is \ndone on time with nice surprises, \nvery good locations of the apartments"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0XFFF2C94C),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0XFFF2C94C),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0XFFF2C94C),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0XFFF2C94C),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0XFFF2C94C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
