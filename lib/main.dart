import 'package:flutter/material.dart';
import 'package:wesing/views/favorite.dart';
import 'package:wesing/views/history.dart';
import 'package:wesing/views/home.dart';
import 'package:wesing/views/about.dart';
import 'package:wesing/views/notification.dart';
import 'package:wesing/views/profile.dart';
import 'package:wesing/views/setting.dart';
import 'package:wesing/views/index.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MaterialApp(
      // នៅពេលយើងបើក App វានឹងទៅបើក​  Sceen នឹងមុនគេ
      initialRoute: '/',
      routes: {
        '/': (context) => const IndexSceen(),
        '/about': (context) => const AboutScreen(),
        '/favorite': (context) => const FavoriteScreen(),
        '/setting': (context) => const SettingScreen(),
        '/home': (context) => const HomeScreen(),
        '/history': (context) => const HistoryScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/notification': (context) => const NotificationScreen(),
      },
    ));

// root Widget

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test Flutter',
//       home: HomeSceen(),
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//     );
//   }
// }
