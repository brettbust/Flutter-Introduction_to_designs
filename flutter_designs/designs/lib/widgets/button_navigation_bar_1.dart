import 'package:flutter/material.dart';

class BottomNavigationBar1 extends StatelessWidget {
  const BottomNavigationBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        //currentIndex: 1,
        selectedItemColor: const Color.fromRGBO(236, 98, 188, 1),
        /* selectedItemColor: Colors.grey, */
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined),
            label: 'Graph',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Users',
          ),
        ],
      ),
    );
  }
}
