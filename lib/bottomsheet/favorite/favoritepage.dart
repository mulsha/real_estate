import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class favoritepage extends StatefulWidget {
  const favoritepage({Key? key}) : super(key: key);

  @override
  State<favoritepage> createState() => _favoritepageState();
}

class _favoritepageState extends State<favoritepage> {
  List name = ["3 Guest", "Apartment", "WIFI", "Restaurant"];
  DateTime today = DateTime.now();

  void selectedday(DateTime day, DateTime focusedday) {
    setState(() {
      today = day;
    });
  }

  double valuee = 5;

  int a = 1;
  List room = ["Studio", "2 Bathroom", "3 Bathroom", "4 Bathroom"];

  @override
  Widget build(BuildContext context) {
    double Tht = MediaQuery.of(context).size.height;
    double tw = MediaQuery.of(context).size.width;
    double bottom = MediaQuery.of(context).padding.bottom;
    double top = MediaQuery.of(context).padding.top;

    double th = Tht - bottom - top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: th * 0.05),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return DraggableScrollableSheet(
                            initialChildSize: .4,
                            maxChildSize: 1,
                            minChildSize: .4,
                            expand: false,
                            builder: (context, scrollController) {
                              return ListView.builder(
                                itemCount: 1,
                                controller: scrollController,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(height: th * 0.03),
                                      Container(
                                        height: th * 0.38,
                                        child: TableCalendar(
                                          rowHeight: th * 0.05,
                                          focusedDay: today,
                                          firstDay: DateTime.utc(2001, 10, 25),
                                          lastDay: DateTime.utc(2030, 10, 25),
                                          locale: "en_US",
                                          headerStyle: HeaderStyle(
                                              formatButtonVisible: false,
                                              titleCentered: true),
                                          availableGestures:
                                              AvailableGestures.all,
                                          selectedDayPredicate: (day) =>
                                              isSameDay(day, today),
                                          onDaySelected: selectedday,
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: EdgeInsets.only(left: 15),
                                              child: Text(
                                                "Price range",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: th * 0.025),
                                              ))),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        height: th * 0.07,
                                        width: tw * 0.9,
                                        // color: Colors.orange,
                                        child: StatefulBuilder(
                                          builder: (context, setState1) {
                                            return Slider(
                                              thumbColor: Colors.black,
                                              min: 0,
                                              max: 7000,
                                              autofocus: true,
                                              value: valuee,
                                              divisions: 100,
                                              activeColor: Color(0XFF2D52EF),
                                              label: valuee.round().toString(),
                                              inactiveColor: Colors.orange,
                                              onChanged: (value) {
                                                setState1(() {
                                                  setState(() {
                                                    valuee = value;
                                                  });
                                                });
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: EdgeInsets.only(left: 15),
                                              child: Text(
                                                "Star range",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: th * 0.025),
                                              ))),
                                      SizedBox(height: th * 0.02),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Spacer(),
                                            CircleAvatar(
                                              radius: th * 0.018,
                                              backgroundColor:
                                                  Color(0XFF331E1F20),
                                              child: Icon(
                                                Icons.done,
                                                color: Colors.white,
                                                size: th * 0.024,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Spacer(),
                                            CircleAvatar(
                                              radius: th * 0.018,
                                              backgroundColor:
                                                  Color(0XFF331E1F20),
                                              child: Icon(
                                                Icons.done,
                                                color: Colors.white,
                                                size: th * 0.024,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Spacer(),
                                            CircleAvatar(
                                              radius: th * 0.018,
                                              backgroundColor:
                                                  Color(0XFF331E1F20),
                                              child: Icon(
                                                Icons.done,
                                                color: Colors.white,
                                                size: th * 0.024,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Spacer(),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  a = 1;
                                                });
                                              },
                                              child: CircleAvatar(
                                                radius: th * 0.018,
                                                backgroundColor: a == 1
                                                    ? Color(0XFF331E1F20)
                                                    : Color(0XFF049FFF),
                                                child: Icon(
                                                  Icons.done,
                                                  color: Colors.white,
                                                  size: th * 0.024,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(right: 5),
                                              child: Icon(
                                                Icons.star,
                                                color: Color(0XFF049FFF),
                                              ),
                                            ),
                                            Spacer(),
                                            CircleAvatar(
                                              radius: th * 0.018,
                                              backgroundColor:
                                                  Color(0XFF331E1F20),
                                              child: Icon(
                                                Icons.done,
                                                color: Colors.white,
                                                size: th * 0.024,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: th * 0.02),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: EdgeInsets.only(left: 15),
                                              child: Text(
                                                "Rooms",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: th * 0.025),
                                              ))),
                                      SizedBox(
                                        height: th * 0.03,
                                      ),
                                      Container(
                                        width: tw * 0.9,
                                        height: th * 0.047,
                                        // color: Colors.green,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: room.length,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              width: tw * 0.28,
                                              height: th * 0.047,
                                              margin: EdgeInsets.all(3),
                                              child: Center(
                                                  child: Text(
                                                room[index],
                                                style: TextStyle(
                                                    fontSize: th * 0.02,
                                                    color: Colors.black),
                                              )),
                                              decoration: BoxDecoration(
                                                  color: Color(0XFFE4E4E7),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: th * 0.04,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: th * 0.08,
                                          width: tw * 0.8,
                                          decoration: BoxDecoration(
                                              color: Color(0XFF049FFF),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Center(
                                              child: Text(
                                            "Apply fitlers",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: th * 0.025),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: th * 0.04,
                                      ),
                                    ],
                                  );
                                },
                              );
                              // );
                            },
                          );
                        });
                  },
                  child: Container(
                    height: th * 0.055,
                    width: th * 0.055,
                    margin: EdgeInsets.only(left: 10),
                    child: Center(
                      child: Icon(
                        Icons.filter_list_outlined,
                        size: th * 0.04,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0XFF049FFF), shape: BoxShape.circle),
                  ),
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
                        "Search via City",
                        style: TextStyle(
                            fontSize: th * 0.023, color: Color(0XFF8F92A1)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                margin:
                EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Favorite apartments",
                  style: TextStyle(
                      fontSize: th * 0.025,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              width: th * 0.8,
              height: th * 0.8,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    width: th * 0.8,
                    // height: th * 0.35,
                    // decoration: BoxDecoration(color: Colors.orange),
                    child: Column(
                      children: [
                        Container(
                          width: th * 0.8,
                          height: th * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("images/pic1.png"),
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
                                    margin:
                                        EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      "Suny apartment",
                                      style: TextStyle(
                                          fontSize: th * 0.023,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 0, top: 5),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            color: Color(0XFF8F92A1),
                                            size: th * 0.02),
                                        SizedBox(
                                          width: tw * 0.01,
                                        ),
                                        Text(
                                          "Los Angeles",
                                          style: TextStyle(
                                              fontSize: th * 0.02,
                                              color: Color(0XFF8F92A1)),
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
                                margin:
                                    EdgeInsets.only(bottom: 20, right: 10),
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
          ],
        ),
      ),
    );
  }
}
