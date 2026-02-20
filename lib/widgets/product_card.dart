import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: ListTile(
        leading: Image.network(
          product.image,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Preço: MZN ${product.price.toStringAsFixed(2)}'),
      ),
    );
  }
}
