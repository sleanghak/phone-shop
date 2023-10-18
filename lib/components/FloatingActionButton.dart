import 'package:flutter/material.dart';

void main() {
  runApp(const CFloatingActionButton());
}

class CFloatingActionButton extends StatelessWidget {
  const CFloatingActionButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.facebook),
        onPressed: () {},
      ),
    );
  }
}
