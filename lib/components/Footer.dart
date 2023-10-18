import 'package:flutter/material.dart';

void main() {
  runApp(const Footer());
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}





  // // footer for mobile app
  //     bottomNavigationBar: BottomNavigationBar(
  //       backgroundColor: Color.fromARGB(255, 0, 113, 243),
  //       fixedColor: Color.fromARGB(255, 255, 255, 255),
  //       unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
  //       type: BottomNavigationBarType.fixed,
  //       items: const [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.history),
  //           label: 'History',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.notifications),
  //           label: 'Notification',
  //         ),
  //       ],
  //     ),