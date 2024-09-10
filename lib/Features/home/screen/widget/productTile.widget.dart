import 'package:bloc_learn/Features/home/bloc/home_bloc_bloc.dart';
import 'package:bloc_learn/Features/home/model/home_product.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

class ProductTile extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBlocBloc? homeBlocBloc;
  const ProductTile(
      {super.key, required this.productDataModel, required this.homeBlocBloc});

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
        currency: 'Rs ', // Default is '$'
        onTap: () {
          homeBlocBloc?.add(HomeProductCartButtonClickedEvent(
              clickedProduct: productDataModel));
        },
        onFavoritePressed: () {
          homeBlocBloc?.add(HomeProductWishlistButtonClickedEvent(
              clickedProduct: productDataModel));
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
