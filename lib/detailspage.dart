import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/summarypage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class dtailspage extends StatefulWidget {
  const dtailspage({Key? key}) : super(key: key);

  @override
  State<dtailspage> createState() => _dtailspageState();
}

class _dtailspageState extends State<dtailspage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;
    List name = ["3 Guest", "Apartment", "WIFI", "Restaurant"];

    double th = Tht - bottom - top;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: th * 0.12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\150",
                      style: TextStyle(
                          fontSize: th * 0.029,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "/night",
                      style: TextStyle(
                          fontSize: th * 0.023, color: Color(0XFF662E3034)),
                    ),
                    SizedBox(width: 4),
                  ],
                )
              ],
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return summarypage();
                //   },
                // ));
                Get.to(summarypage());
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                height: th * 0.075,
                width: tw * 0.35,
                decoration: BoxDecoration(
                    color: Color(0XFF049FFF),
                    borderRadius: BorderRadius.circular(40)),
                // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Center(
                    child: Text(
                  "Booking",
                  style: TextStyle(fontSize: th * 0.028, color: Colors.white),
                )),
              ),
            )
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10))),
            //   onPressed: () {
            //
            //   },
            //   child: Text("Buy Now"),
            // )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: th * .9,
                width: tw * 1,
                // decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: th * 0.3),
                      height: th * .55,
                      width: tw * 1,
                      // decoration: BoxDecoration(color: Colors.green),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 20, top: 20),
                                      child: Text(
                                        "Jack Nicolson",
                                        style: TextStyle(
                                            fontSize: th * 0.03,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20, top: 10),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      height: th * 0.07,
                                      width: th * 0.07,
                                      child: Image(
                                        image: AssetImage("images/ssss.png"),
                                        fit: BoxFit.fill,
                                      ))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: th * 0.03,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Specifications",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: th * 0.027),
                              ),
                            ),
                          ),
                          Container(
                            width: tw * 0.9,
                            height: th * 0.047,
                            margin: EdgeInsets.only(top: 10),
                            // color: Colors.green,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: name.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: tw * 0.28,
                                  height: th * 0.047,
                                  margin: EdgeInsets.all(3),
                                  child: Center(
                                      child: Text(
                                    name[index],
                                    style: TextStyle(
                                        fontSize: th * 0.02,
                                        color: Color(0XFF8F92A1)),
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color(0XFFE4E4E7),
                                      borderRadius: BorderRadius.circular(10)),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: th * 0.027),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Nullam hendrerit lectus non pretium fermentum. Donec faucibus sodales ante, nec finibus quam lacinia sit amet. Nunc ut posuere erat. Proin convallis odio elementum sem vestibulum",
                                style: TextStyle(
                                    fontSize: th * 0.02,
                                    color: Color(0XFF998F92A1)),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              child: Text(
                                "About this space",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: th * 0.027),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GridView.builder(
                              itemCount: 4,
                              gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: tw * 0.5,
                                      mainAxisExtent: th * 0.35),
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                          image: AssetImage("images/BG2.png")),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: th * .6),
                height: th * .4,
                width: double.infinity,
                child: PageView.builder(
                  onPageChanged: (value) {},
                  controller: _controller,
                  itemCount: 3,
                  itemBuilder: (contaxt, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        child: Hero(
                          tag: index,
                          child: Image(
                            image: AssetImage("images/background.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: th * .63),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SwapEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.white38,
                      spacing: 10),
                ),
              ),
            ],
            // ).fadeAnimation(0.2),
          ),
        ),
      ),
    );
  }
}
