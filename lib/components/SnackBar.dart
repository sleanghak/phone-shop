import 'package:flutter/material.dart';

class CSnackBar extends StatelessWidget {
  const CSnackBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text('Hello Flutter'),
        ),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text('Text label'),
                action: SnackBarAction(
                  label: 'Action',
                  onPressed: () {},
                ),
              ),
            );
          },
          child: Text('Show Snackbar'),
        ),
      ],
    );
  }
}
