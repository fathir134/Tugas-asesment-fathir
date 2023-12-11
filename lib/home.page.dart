import 'package:flutter/material.dart';
import 'package:splash_screen_example/widgets/home_nav_bar.dart';

import 'widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 18, 56, 143),
        appBar: AppBar(
          title: Text(
            'STARBHAK MART',
            style: TextStyle(color: Colors.black), // Set text color to black
          ),
          backgroundColor: Color.fromARGB(255, 18, 56, 143),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/image/1.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                              height: 5), // Jarak ke bawah sebelum teks "ALL"
                          Text(
                            "ALL",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 240, 240, 241),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/image/2.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                              height: 5), // Jarak ke bawah sebelum teks "ALL"
                          Text(
                            "Makanan",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 246, 246, 247),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/image/3.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                              height: 5), // Jarak ke bawah sebelum teks "ALL"
                          Text(
                            "Minuman",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 240, 239, 241),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(), // Add the bottom navigation bar
      ),
    );
  }
}
