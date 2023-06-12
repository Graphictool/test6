import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  final List<String> shoppingItems = [
    'Apples',
    'Bread',
    'Bananas',
    'Milk',
    'Orange',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('My Shopping List'),

        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Cart is empty')),
              );
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(shoppingItems[index]),
          );


        },

        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
