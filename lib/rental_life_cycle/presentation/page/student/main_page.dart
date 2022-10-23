import 'package:flutter/material.dart';
import 'package:meet_your_roommate/profile/presentation/page/profile_page.dart';
import 'package:meet_your_roommate/rental_life_cycle/presentation/page/student/home_page.dart';
import 'package:meet_your_roommate/rental_life_cycle/presentation/page/student/rented_property.dart';
import 'package:meet_your_roommate/roommate_coexistance/presentation/page/roomie_page.dart';
import 'package:meet_your_roommate/social_interaction/presentation/page/favorite_page.dart';

class MainPageStudent extends StatefulWidget {
  const MainPageStudent({super.key});

  @override
  State<MainPageStudent> createState() => _MainPageStudentState();
}

class _MainPageStudentState extends State<MainPageStudent> {
  int _index = 0;
  final pages = [
    const HomePageStudent(),
    const FavoritePage(),
    const RentedPropertyPage(),
    const RoomiePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.key),
            label: "Rented",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.people),
            label: "roomie",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.person),
            label: "user",
          ),
        ],
        onTap: ((value) {
          setState(() {
            _index = value;
          });
        }),
      ),
    );
  }
}
