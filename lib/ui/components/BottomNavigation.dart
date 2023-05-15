import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      onTap: (index) {
        switch(index) {
          case 0: 
            Navigator.pushNamed(context, '/');
            break;

          case 1: 
            Navigator.pushNamed(context, '/search');
            break;
          case 4: 
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home),
          ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.search_outlined),
          ),

        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.add_box_outlined),
          ),

        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.video_collection_outlined),
          ),

        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.account_circle_outlined),
          ),
      ],
      
    );
  }
}
