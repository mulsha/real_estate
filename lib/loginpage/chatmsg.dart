import 'package:flutter/material.dart';

class chatmsg extends StatefulWidget {
  const chatmsg({Key? key}) : super(key: key);

  @override
  State<chatmsg> createState() => _chatmsgState();
}

class _chatmsgState extends State<chatmsg> {
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
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Color(0XFFF9F2ED)),
          height: th * 0.17,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: th * 0.1,
                width: tw * 0.7,
                child: TextFormField(
                    decoration: InputDecoration(hintText: 'Write a comment..')),
              ),
              Container(
                child: Icon(Icons.emoji_emotions_outlined),
              ),
              Container(
                child: Icon(Icons.send),
              )
            ],
          ),
        ),
      ),
    );
  }
}
