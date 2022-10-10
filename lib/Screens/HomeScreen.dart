// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yelp_flutter/Screens/CollectionScreen.dart';
import 'package:yelp_flutter/Screens/MoreScreen.dart';
import 'package:yelp_flutter/Screens/ProfileScreen.dart';
import 'package:yelp_flutter/Screens/SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _currentIndex = 0;
  List _screens = [
    SearchScreen(),
    ProfileScreen(),
    CollectionScreen(),
    MoreScreen(),
  ];
   void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.blueGrey,),
            label: 'Search',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blueGrey,),
            label: 'Me',
            backgroundColor:  Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections,color: Colors.blueGrey,),
            label: 'Collection',
            backgroundColor:  Colors.white),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_outlined,color: Colors.blueGrey,),
          label: 'More',
          backgroundColor: Colors.white,
        ),
      ]),
    );
  }
}