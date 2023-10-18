import 'package:flutter/material.dart';

void main() {
  runApp(const CAppBar());
}

class CAppBar extends StatelessWidget {
  const CAppBar({Key? key}) : super(key: key);
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
    );
  }
}
