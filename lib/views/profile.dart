import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar for the mobile app

      appBar: AppBar(
        title: const Text("Profile"),
      ),

      // body for mobile app

      body: const Row(
        children: [
          Text('hello'),
        ],
      ),

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
    );
  }
}
