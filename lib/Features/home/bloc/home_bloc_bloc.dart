import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_learn/data/cart.data.dart';
import 'package:bloc_learn/data/product.data.dart';
import 'package:bloc_learn/data/wishlist.data.dart';
import 'package:flutter/material.dart';

import '../model/home_product.model.dart';
part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeWishlistNavigateEvent>(homeWishlistNavigateEvent);
    on<HomeCartNavigateEvent>(homeCartNavigateEvent);

    on<HomeProductWishlistButtonClickedEvent>(
        homeProductWishlistButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
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
    emit(HomeNavigateToWishlistPageActionState());
  }

  FutureOr<void> homeCartNavigateEvent(
      HomeCartNavigateEvent event, Emitter<HomeBlocState> emit) {
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(
      HomeProductWishlistButtonClickedEvent event,
      Emitter<HomeBlocState> emit) {
    wishlistData.add(event.clickedProduct);
    emit(HomeProductItemWishlisted());
    debugPrint("added to wish list ");
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeBlocState> emit) {
    debugPrint("added to cart ");
    cartData.add(event.clickedProduct);
    emit(HomeProductItemCartlisted());
  }
}
