import 'package:flutter/material.dart';
import 'package:wesing/utils/constant/dataProducts.dart';
import 'package:wesing/views/productDetail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // var products = List<String>.generate(100, (index) => "Product $index");
  // var products = ['Flutter', 'React Native', 'Kotlin', 'Swift'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar for the mobile app

      appBar: AppBar(
        title: const Text("Home"),
      ),

      // body for mobile app

      body: ListView.separated(
        itemCount: Products.getProducts().length,
        itemBuilder: (context, index) {
          // print(products[1]);
          // print('console: $index');
          return ListTile(
            title: Text(Products.getProducts()[index].name),
            subtitle:
                // ប្រើ .toString() ដើម្បី convert ទៅជា String
                // Text(Products.getProducts()[index].description.toString()),
                // នៅពេលប្រើសញ្ញា "!" ត្រូវប្រាកដថា data មិនអាចមាន null ទេ
                // Text(Products.getProducts()[index].description!),
                // នៅពេលប្រើសញ្ញា "??" មានន័យថាបើអត់មាន "data" ទេឲវាចេញ message "no data"
                Text(Products.getProducts()[index].description ??
                    'No Description.'),
            //ប្រើធម្មតា
            // trailing: Text(Products.getProducts()[index].price.toString()),
            // របៀបប្រើជាមួយសញ្ញា $
            trailing: Text(
              "\$${Products.getProducts()[index].price.toString()}",
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.w700),
            ),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(Products.getProducts()[index].imagePath),
            ),
            onTap: () {
              print(
                  "click on product id : ${Products.getProducts()[index].id}");
              final route = MaterialPageRoute(
                builder: (context) => ProductDetail(
                  // របៀបបោះ data តាម constructor
                  title: Products.getProducts()[index].name,
                  price: Products.getProducts()[index].price.toString(),
                  imagePath: Products.getProducts()[index].imagePath,
                  description:
                      Products.getProducts()[index].description ?? 'No Data',
                ),
              );
              // two way push
              Navigator.push(context, route);
              // one way push
              // Navigator.pushReplacement(context, route);
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            height: 1,
          );
        },
      ),
      // drawer for the mobile app

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
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
              title: const Text('Setting'),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),

            // for divider in mobile app
            // const Divider(),

            // menu for favorite
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorite'),
              onTap: () {
                Navigator.pushNamed(context, '/favorite');
              },
            ),

            // menu for Profile
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
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
