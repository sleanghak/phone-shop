import 'package:flutter/material.dart';

void main() {
  runApp(const CDrawer());
}

class CDrawer extends StatelessWidget {
  const CDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('Leanghak SEIREY'),
              accountEmail: Text('sleanghak@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    // url គឺជា remote server
                    "https://avatars.githubusercontent.com/u/88415887?v=4"),
              ),
              // otherAccountsPictures: [
              //   CircleAvatar(
              //     backgroundImage: NetworkImage(
              //         "https://avatars.githubusercontent.com/u/88415887?v=4"),
              //   ),
              //   CircleAvatar(
              //     backgroundImage: NetworkImage(
              //         "https://avatars.githubusercontent.com/u/88415887?v=4"),
              //   ),
              // ],

              // icon dropdown
              onDetailsPressed: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_back),
              title: Text('Data 1'),
              onTap: () {},
            ),

            // Divider
            // const Divider(),

            ListTile(
              leading: const Icon(Icons.message),
              title: Text('Data 2'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.facebook),
              title: Text('Data 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
