import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_grid.dart';


class ProductOverviewScreen extends StatelessWidget {
  //const ProductOverviewScreen({Key? key}) : super(key: key);
final List<Product> loadedProducts=[

    
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Myapp'),
     ),
     body:  ProductGrid(),
    );
  }
}