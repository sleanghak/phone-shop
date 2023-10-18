import 'package:flutter/material.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar for app
      appBar: AppBar(
        title: const Text('Home'),
        // leading: const Icon(Icons.menu),

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      // body app
      body: const Row(
        children: [
          Text('hello'),
        ],
      ),

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
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
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

      // footer for app
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: const Color.fromARGB(255, 243, 16, 0),
        // fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.amber,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(
      //         icon: Icon(Icons.home),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.history),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.favorite),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.library_add),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.person),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),

      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.facebook),
      //   onPressed: () {},
      // ),
    );
  }
}
