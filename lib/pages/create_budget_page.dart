import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateBudgetPage extends StatefulWidget {
  @override
  _CreateBudgetPageState createState() => _CreateBudgetPageState();
}

class _CreateBudgetPageState extends State<CreateBudgetPage> {
  int selectedCard = 0;
  List categories = [
    {"name": "Auto", "icon": "assets/images/auto.png"},
    {"name": "Bank", "icon": "assets/images/bank.png"},
    {"name": "Cash", "icon": "assets/images/cash.png"},
    {"name": "Charity", "icon": "assets/images/charity.png"},
    {"name": "Eating", "icon": "assets/images/eating.png"},
    {"name": "Gift", "icon": "assets/images/gift.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create Budget',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Category',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          categories.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCard = index;
                                });
                              },
                              child: Container(
                                height: 150.0,
                                width: 150.0,
                                padding: EdgeInsets.all(30.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: selectedCard == index
                                        ? Colors.pink
                                        : Colors.transparent,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      categories[index]['icon'],
                                      width: 40.0,
                                    ),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    Text(
                                      categories[index]['name'],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Budget Name',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ex: Monthly Shopping'),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Enter Budget Amount',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Ex: \$500',
                        suffixIcon: Icon(
                          FontAwesomeIcons.arrowCircleRight,
                          size: 30.0,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
