import 'package:flutter/material.dart';

class DailyPage extends StatefulWidget {
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  int currentDay = 0;
  List days = [
    {"label": "Sun", "day": "28"},
    {"label": "Mon", "day": "29"},
    {"label": "Tue", "day": "30"},
    {"label": "Wed", "day": "1"},
    {"label": "Thu", "day": "2"},
    {"label": "Fri", "day": "3"},
    {"label": "Sat", "day": "4"},
  ];
  List daily = [
    {
      "icon": "assets/images/bank.png",
      "name": "Bank",
      "date": "Fri 10AM",
      "price": "\$340.00"
    },
    {
      "icon": "assets/images/auto.png",
      "name": "Automobile",
      "date": "Mon 8AM",
      "price": "\$70.00"
    },
    {
      "icon": "assets/images/gift.png",
      "name": "Gift",
      "date": "Sat 6PM",
      "price": "\$110.00"
    },
    {
      "icon": "assets/images/eating.png",
      "name": "Eating",
      "date": "Sun 5PM",
      "price": "\$60.00"
    },
    {
      "icon": "assets/images/charity.png",
      "name": "Charity",
      "date": "Wed 12PM",
      "price": "\$1200.00"
    }
  ];
  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.05),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5.0,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Transactions',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: List.generate(
                        days.length,
                        (index) => Container(
                          width: (phoneWidth - 40) / days.length,
                          child: Column(
                            children: [
                              Text(days[index]['label']),
                              SizedBox(height: 10.0),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentDay = index;
                                  });
                                },
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    color: currentDay == index
                                        ? Color(0xFFFF3378)
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: currentDay == index
                                          ? Color(0xFFFF3378)
                                          : Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      days[index]['day'],
                                      style: TextStyle(
                                        color: currentDay == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: List.generate(
                    daily.length,
                    (index) => Column(
                      children: [
                        ListTile(
                          leading: Image.asset(daily[index]["icon"]),
                          title: Text(
                            daily[0]["name"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(daily[index]["date"]),
                          trailing: Text(
                            daily[index]["price"],
                            style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
