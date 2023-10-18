import 'package:flutter/material.dart';
import 'package:wesing/views/history.dart';
import 'package:wesing/views/home.dart';
import 'package:wesing/views/notification.dart';

class IndexSceen extends StatefulWidget {
  const IndexSceen({super.key});

  @override
  State<IndexSceen> createState() => _IndexSceenState();
}

class _IndexSceenState extends State<IndexSceen> {
  int _selectedIndex = 0;

  final List _page = const [
    HomeScreen(),
    HistoryScreen(),
    NotificationScreen(),
  ];

  void _navigaBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body for mobile app

      body: _page[_selectedIndex],
      // drawer for the mobile app

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Leanghak SEIREY'),
              accountEmail: Text('sleanghak@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/88415887?v=4"),
              ),
            ),

            // for divider in mobile app
            // const Divider(),

            // menu for setting

            ListTile(
              leading: const Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),

            // for divider in mobile app
            // const Divider(),

            // menu for favorite
            ListTile(
              leading: const Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap: () {
                Navigator.pushNamed(context, '/favorite');
              },
            ),

            // menu for Profile
            ListTile(
              leading: const Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),

      // footer for mobile app
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 113, 243),
        fixedColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigaBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
