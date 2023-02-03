import 'package:donor_app/main.dart';
import 'package:donor_app/screens/donation_history.dart';
import 'package:donor_app/screens/user_profile.dart';
import 'package:donor_app/screens/zakaat_calculator.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import './../screens/dashboard.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class NavBar extends StatefulWidget {
  static const id = 'navigation_bar';

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late List<Map<String, dynamic>> _pages;

  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': DonorDashboard(), 'title': 'Dashboard'},
      {'page': DonationHistory(), 'title': 'History'},
      {'page': ZakatCalculator(), 'title': 'Zakat Calculator'},
      {'page': UserProfile(), 'title': 'Profile'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(_pages[_selectedIndex]['title']),
        leading: const Icon(Icons.menu),
      ),
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: kPrimaryColor,
        strokeColor: kPrimaryColor,
        unSelectedColor: Color(0xffbcbcbc),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home),
            //  title: Text('Home'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            //  title: Text('History'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            //  title: Text('zakat calculator'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            // title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: DonorDashboard(),
    );
  }
}
