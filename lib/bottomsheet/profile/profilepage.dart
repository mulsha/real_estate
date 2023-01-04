import 'package:flutter/material.dart';
import 'package:real_estate/bottomsheet/profile/reviewpage.dart';
import 'package:real_estate/bottomsheet/profile/viewaccount.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  int p = 1;

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //okay done
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: th * 0.3,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 15),
                    child: Image(
                      image: AssetImage("images/profile bg.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Image(
                        image: AssetImage("images/profilepic.png"),
                        fit: BoxFit.fill,
                        height: th * 0.12,
                        width: th * 0.12,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 170,
                    child: Container(
                      height: th * 0.06,
                      width: th * 0.06,
                      margin: EdgeInsets.only(left: 25),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0XFF049FFF), shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Margaret Novakowska",
                        style: TextStyle(
                            fontSize: th * 0.03, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              size: th * .018, color: Color(0XFF8F92A1)),
                          Text(
                            " Los Angeles",
                            style: TextStyle(
                                fontSize: th * 0.017,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF8F92A1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 350, top: 5),
                    child: Divider(
                      color: Color(0XFF332E3034),
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Hi! I am a Margaret, I really like traveling to really \ndifferent countries, most often I am looking for flats \nthat have very friendly landlords in a good location.",
                        style: TextStyle(
                            fontSize: th * 0.017,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF8F92A1),
                            height: 1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: th * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              p = 1;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text(
                              "Rent History",
                              style: TextStyle(
                                  color:
                                      p == 1 ? Colors.black : Color(0XFF8F92A1),
                                  fontSize: th * 0.022,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              p = 0;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  color:
                                      p == 1 ? Color(0XFF8F92A1) : Colors.black,
                                  fontSize: th * 0.022,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: th * 0.04,
                  ),
                  p == 1
                      ? Container(
                          width: th * 0.8,
                          height: th * 0.8,
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                width: th * 0.8,
                                // height: th * 0.35,
                                margin: EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                // decoration: BoxDecoration(color: Colors.orange),
                                child: Column(
                                  children: [
                                    Container(
                                      width: th * 0.8,
                                      height: th * 0.25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("images/pic1.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Container(
                                      width: th * 0.8,
                                      height: th * 0.09,
                                      // decoration: BoxDecoration(color: Colors.green),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10, top: 10),
                                                child: Text(
                                                  "Suny apartment",
                                                  style: TextStyle(
                                                      fontSize: th * 0.023,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color:
                                                            Color(0XFF8F92A1),
                                                        size: th * 0.02),
                                                    SizedBox(
                                                      width: tw * 0.01,
                                                    ),
                                                    Text(
                                                      "Los Angeles",
                                                      style: TextStyle(
                                                          fontSize: th * 0.02,
                                                          color: Color(
                                                              0XFF8F92A1)),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Spacer(
                                            flex: 1,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Text(
                                              "\$233",
                                              style: TextStyle(
                                                  fontSize: th * 0.025,
                                                  color: Color(0XFF049FFF)),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                bottom: 20, right: 10),
                                            child: Text(
                                              " /per day",
                                              style: TextStyle(
                                                  fontSize: th * 0.02,
                                                  color: Color(0XFF8F92A1)),
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
                      : Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return viewaccount();
                                    },
                                  ));
                                },
                                child: Container(
                                  height: th * 0.087,
                                  width: tw * 0.87,
                                  decoration: BoxDecoration(
                                      color: Color(0XFF66E4E4E7),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        height: th * 0.06,
                                        width: th * 0.06,
                                        child: Icon(
                                          Icons.account_circle_outlined,
                                          size: th * 0.04,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0XFF66E4E4E7),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Account",
                                          style: TextStyle(
                                              fontSize: th * 0.023,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: th * 0.055,
                                        width: th * 0.055,
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white,
                                          size: th * 0.03,
                                        ),
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0XFF049FFF),
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: th * 0.02,
                              ),
                              Container(
                                height: th * 0.087,
                                width: tw * 0.87,
                                decoration: BoxDecoration(
                                    color: Color(0XFF66E4E4E7),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      height: th * 0.06,
                                      width: th * 0.06,
                                      child: Icon(
                                        Icons.payment_outlined,
                                        size: th * 0.04,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0XFF66E4E4E7),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Payment setting",
                                        style: TextStyle(
                                            fontSize: th * 0.023,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: th * 0.053,
                                      width: th * 0.053,
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: th * 0.03,
                                      ),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          color: Color(0XFF049FFF),
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: th * 0.02,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return reviewpage();
                                    },
                                  ));
                                },
                                child: Container(
                                  height: th * 0.087,
                                  width: tw * 0.87,
                                  decoration: BoxDecoration(
                                      color: Color(0XFF66E4E4E7),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        height: th * 0.06,
                                        width: th * 0.06,
                                        child: Icon(
                                          Icons.notifications_none_outlined,
                                          size: th * 0.04,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0XFF66E4E4E7),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Notification",
                                          style: TextStyle(
                                              fontSize: th * 0.023,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: th * 0.055,
                                        width: th * 0.055,
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white,
                                          size: th * 0.03,
                                        ),
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0XFF049FFF),
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.only(left: 20),
              //           child: Column(
              //             children: [
              //               Text(name[index]),
              //               Text(
              //                 ids[index],
              //                 style: TextStyle(fontSize: 12),
              //               )
              //             ],
              //           ),
              //         )
              //       ],
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.end,
              //       children: [
              //         Container(
              //           child: Column(
              //             children: [
              //               Text(
              //                 "${follower[index]} Follower | ${following[index]} Following",
              //                 style: TextStyle(fontSize: 10),
              //               ),
              //               Container(
              //                 margin: EdgeInsets.only(left: 25),
              //                 child: Row(
              //                   // mainAxisSize: MainAxisSize.min,
              //                   children: [
              //                     Icon(Icons.facebook),
              //                     // Icon(Icons.bird),
              //                     Image(
              //                       image: AssetImage("images/twitter.png"),
              //                       height: 23,
              //                       width: 23,
              //                     ),
              //                     Icon(Icons.link),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         )
              //       ],
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
