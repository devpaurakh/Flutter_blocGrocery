import 'package:bloc_learn/Features/home/model/home_product.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

class ProductTile extends StatelessWidget {
  final ProductDataModel productDataModel;
  const ProductTile({super.key, required this.productDataModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ProductCard(
        imageUrl: productDataModel.imageUrl,
        //add your image url here ,
        categoryName: productDataModel.catagory,
        productName: productDataModel.name,
        price: productDataModel.price,
        currency: '\$', // Default is '$'
        onTap: () {
          // Handle card tap event
        },
        onFavoritePressed: () {
          // Handle favorite button press
        },
        rating: 4.2, // Optional rating
        discountPercentage: 35.0, // Optional discount percentage
        isAvailable: true, // Optional availability status
        cardColor: Colors.white, // Optional card background color
        textColor: Colors.black, // Optional text color
        borderRadius: 2.0, // Optional border radius
      ),
    );
  }
}
