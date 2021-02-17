import 'package:budget_tracker_app/pages/create_budget_page.dart';
import 'package:budget_tracker_app/pages/daily_page.dart';
import 'package:budget_tracker_app/pages/stats_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          DailyPage(),
          StatsPage(),
          Center(
            child: Text('Page 3'),
          ),
          Center(
            child: Text('Page 4'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFF3378),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateBudgetPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 10.0,
          rightCornerRadius: 10.0,
          activeColor: Color(0xFFFF3378),
          splashColor: Color(0xFFFF3378),
          inactiveColor: Colors.black.withOpacity(0.5),
          icons: [
            Icons.calendar_today,
            Icons.bar_chart,
            Icons.account_balance_wallet,
            Icons.person,
          ],
          activeIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}
