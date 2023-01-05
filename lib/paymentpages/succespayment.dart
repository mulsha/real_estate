import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/bottomsheet/Home/01-Home.dart';
import 'package:real_estate/bottomsheet/bottomsheet.dart';

class succespayment extends StatefulWidget {
  const succespayment({Key? key}) : super(key: key);

  @override
  State<succespayment> createState() => _succespaymentState();
}

class _succespaymentState extends State<succespayment> {
  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      backgroundColor: Color(0XFF049FFF),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: th * 0.35,
            ),
            Container(
              height: th * 0.15,
              width: th * 0.15,
              decoration: BoxDecoration(
                  // color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage("images/Check-In-Progress.png"))),
            ),
            Container(
              child: Text(
                "Succes!",
                style: TextStyle(fontSize: th * 0.06, color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                "You succesfully maked a payment, \nenjoy travel!",
                style: TextStyle(fontSize: th * 0.02, color: Colors.white),
              ),
            ),
            SizedBox(
              height: th * 0.27,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return home();
                //   },
                // ));
                Get.to(bottompage());
              },
              child: Container(
                height: th * 0.07,
                width: tw * 0.8,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    color: Color(0XFF53D769),
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
