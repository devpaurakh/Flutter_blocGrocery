import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_learn/data/product.data.dart';
import 'package:flutter/material.dart';

import '../model/home_product.model.dart';
part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);

    on<HomeWishlistNavigateEvent>(homeWishlistNavigateEvent);
    on<HomeCartNavigateEvent>(homeCartNavigateEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeBlocState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    emit(HomeLoadedSuccessState(
        products: ProductData.groceryProducts
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                catagory: e['category'],
                price: e['price'],
                quantity: e['quantity'],
                imageUrl: e['image'],
                description: e['description']))
            .toList()));
  }

  FutureOr<void> homeWishlistNavigateEvent(
      HomeWishlistNavigateEvent event, Emitter<HomeBlocState> emit) {
    debugPrint("Welcome to wishlist");
    emit(HomeNavigateToWishlistPageActionState());
  }

  FutureOr<void> homeCartNavigateEvent(
      HomeCartNavigateEvent event, Emitter<HomeBlocState> emit) {
    debugPrint("Welcome to Cart");
    emit(HomeNavigateToCartPageActionState());
  }
}
