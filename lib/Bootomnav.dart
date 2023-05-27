import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoopping/cart.dart';
import 'package:shoopping/favourite.dart';
import 'package:shoopping/homepage.dart';
import 'package:shoopping/profile.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex;
  BottomNavBar(this.currentIndex);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // int _currentIndex = 0;

  final pages =[
    Homepage(),
    favourite(),
    cart(),
    profile(),
  ];
  final navitem =[
    Icon(Icons.home, size: 30),
    Icon(Icons.favorite_border, size: 30),
    Icon(Icons.shopping_cart, size: 30),
    Icon(Icons.account_circle_sharp, size: 30),
  ];
  void onTapTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[widget.currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        animationCurve: Curves.decelerate,
        animationDuration: Duration(seconds: 1),
        buttonBackgroundColor: Colors.deepOrange[200],
        backgroundColor: Colors.transparent,
        color: Colors.deepOrange.shade200,
        items: navitem,
        index: widget.currentIndex,
        onTap: onTapTapped,
      ),
    );
  }
}