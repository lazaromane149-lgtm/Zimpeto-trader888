import '../models/product_model.dart';

class ProductService {
  static List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'Camiseta Hypebox',
        price: 1500,
        image: 'https://via.placeholder.com/150',
      ),
      Product(
        id: '2',
        name: 'Calça Jeans',
        price: 2500,
        image: 'https://via.placeholder.com/150',
      ),
    ];
  }
}
