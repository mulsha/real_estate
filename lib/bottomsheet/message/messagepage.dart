import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/bottomsheet/message/chatmsg.dart';

class messagepage extends StatefulWidget {
  const messagepage({Key? key}) : super(key: key);

  @override
  State<messagepage> createState() => _messagepageState();
}

class _messagepageState extends State<messagepage> {
  List profileimg = [
    "Profile 1.png",
    "Profile 2.png",
    "Profile 3.png",
    "Profile 4.png",
    "Profile 5.png",
    "Profile 6.png",
    "Profile 7.png",
    "Profile 1.png",
    "Profile 2.png",
    "Profile 3.png",
    "Profile 4.png",
    "Profile 5.png",
    "Profile 6.png",
    "Profile 7.png",
    "Profile 1.png",
    "Profile 2.png",
    "Profile 3.png",
    "Profile 4.png",
    "Profile 5.png",
    "Profile 6.png",
    "Profile 7.png"
  ];

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: th * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              height: th * 0.057,
              width: tw * 0.89,
              decoration: BoxDecoration(
                  color: Color(0XFFE4E4E7),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  SizedBox(width: tw * 0.04),
                  Icon(Icons.search,
                      size: th * 0.033, color: Color(0XFF8F92A1)),
                  SizedBox(
                    width: tw * 0.04,
                  ),
                  Text(
                    "Search via message",
                    style: TextStyle(
                        fontSize: th * 0.023, color: Color(0XFF8F92A1)),
                  )
                ],
              ),
            ),
            Container(
              width: th * 0.8,
              height: th * 0.82,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return chatmsg();
                      //   },
                      // ));
                      Get.to(chatmsg());
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("Billy Green"),
                        subtitle: Text("Thank you for sharing"),
                        trailing: Text("3:03pm"),
                        leading: Image(
                            image: AssetImage("images/${profileimg[index]}")),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
