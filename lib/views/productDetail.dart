import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(
      {super.key,
      required this.title,
      required this.price,
      required this.description,
      required this.imagePath});
  final String title;
  final String price;
  final String description;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Product Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              width: 400,
              height: 400,
              alignment: Alignment.center,
              imagePath,
              fit: BoxFit.cover,
            ),
          ),

          // const SizedBox(
          //   height: 21,
          // ),

          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Product Name : $title',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              '\$$price',
              // style: Theme.of(context).textTheme.headline6,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              description,
              // style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}


 // const SizedBox(
//   height: 30,
// ),
// const Text('Product'),
// const SizedBox(
//   height: 30,
// ),
 // ElevatedButton(
//     onPressed: () {
//       Navigator.pop(context);
//     },
 //     child: const Text('Go Back')),