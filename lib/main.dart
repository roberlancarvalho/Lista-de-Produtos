import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Produtos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Teclado Redragon",
      "description": "Description of product 1",
      "price": "255.00",
      "image": "assets/key.jpg"
    },
    {
      "name": "Mouse Redragon",
      "description": "Description of product 2",
      "price": "300.00",
      "image": "assets/mouse.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Image.asset(products[index]['image'], width: 100, height: 100),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(products[index]['name'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(products[index]['description']),
                        Text('Price: \$${products[index]['price']}', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
