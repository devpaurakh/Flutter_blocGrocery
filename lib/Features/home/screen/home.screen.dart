// ignore_for_file: type_literal_in_constant_pattern

import 'package:bloc_learn/Features/cart/screen/cart.screen.dart';
import 'package:bloc_learn/Features/home/bloc/home_bloc_bloc.dart';
import 'package:bloc_learn/Features/home/screen/widget/productTile.widget.dart';
import 'package:bloc_learn/Features/wishlist/screen/wishlist.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBlocBloc homeBlocBloc = HomeBlocBloc();
  @override
  void initState() {
    homeBlocBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBlocBloc,
      listenWhen: (previous, current) => current is ActionHomeState,
      buildWhen: (previous, current) => current is! ActionHomeState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CartPage()));
        } else if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WishListPage()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));

          case HomeLoadedSuccessState:
          final successState = state as HomeLoadedSuccessState;
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      homeBlocBloc.add(HomeWishlistNavigateEvent());
                    },
                    icon: const Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBlocBloc.add(HomeCartNavigateEvent());
                    },
                    icon: const Icon(Icons.shopping_cart_outlined),
                  )
                ],
                centerTitle: false,
                title: const Text("Welcome, Paurakh"),
                backgroundColor: Colors.grey[200],
              ),
              body: ListView.builder(
                itemCount: successState.products.length,
                itemBuilder: (context, index){
                return ProductTile(productDataModel: successState.products[index]);
              }),
            );

          case HomeErrorState:
            return const Scaffold(
              body: Center(
                child: Text("You've Gotten Error"),
              ),
            );
          default:
            return const Scaffold(
                body: Center(
              child: Text("Did not worked"),
            ));
        }
      },
    );
  }
}
