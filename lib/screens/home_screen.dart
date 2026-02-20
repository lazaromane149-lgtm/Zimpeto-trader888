import 'package:flutter/material.dart';
import '../models/product_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // Lista de produtos de exemplo
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Camiseta Hypebox',
      description: 'Camiseta estilosa para o dia a dia',
      price: 12.99,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Product(
      id: '2',
      name: 'Calça Jeans',
      description: 'Calça confortável e moderna',
      price: 24.50,
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zimpeto Trader'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Text(product.description),
              trailing: Text('MZN ${product.price.toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
