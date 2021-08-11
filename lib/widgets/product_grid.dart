import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  //const ProductGrid({
    //required this.loadedProducts,
  //});
  //const ProductGrid({Key? key}) : super(key: key);
//final List<Product> loadedProducts;
  @override
  Widget build(BuildContext context) {
final productData = Provider.of<Products>(context);
final products = productData.items;
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
         childAspectRatio: 3/2,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,), 
    itemBuilder: (ctx,i) => 
    ChangeNotifierProvider.value(
      //create: (c)=>products[i],
    value: products[i],
child: ProductItem(
         
         //product[i].id, 
         //product[i].title,
         //product[i].imageUrl,
        
         
        
       ),
    ),
    );
  }
}
