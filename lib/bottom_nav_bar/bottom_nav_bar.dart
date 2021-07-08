import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_nav/campaign_page/campaign_page.dart';
import 'package:flutter_bottom_nav/home_page/home_page.dart';
import 'package:flutter_bottom_nav/order_page/order_page.dart';
import 'package:flutter_bottom_nav/profile_page/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  var _pages = [HomePage(), CampaignPage(), OrderPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: _pages[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: BottomNavyBar(
              backgroundColor: Colors.grey[100],
              showElevation: true,
              selectedIndex: _currentIndex,
              items: [
                BottomNavyBarItem(
                  icon: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.camera),
                  title: Text('Campaign'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.find_in_page_outlined),
                  title: Text('Order'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
              ],
              onItemSelected: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
