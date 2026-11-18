import 'package:flutter/material.dart';

class Product {
  String name;
  String desc;
  double price;
  Product({required this.name, required this.desc, this.price = 0.0});
}

class ProductShow extends StatelessWidget {
  final List<Product> dummyproducts = [
    Product(name: 'Product1', desc: "Desc Of Product1", price: 150),
    Product(name: 'Product2', desc: "Desc Of Product2", price: 250),
  ];

  ProductShow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyproducts.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:  const Icon(Icons.shopping_basket),
        );
      },
    ),;
  }
}
