import 'package:flutter/material.dart';

void main() {
  runApp(const CListView());
}

class CListView extends StatelessWidget {
  const CListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  ListView.separated(
        //     itemCount: 20,
        //     itemBuilder: (context, index) {
        //       print('Display item : $index');
        //       return ListTile(
        //         title: Text('Total item : $index'),
        //       );
        //     },
        //     separatorBuilder: (context, index) {
        //       return const Divider(
        //         color: Colors.black,
        //         height: 1,
        //       );
        //     },
        //   ),
        );
  }
}
