import 'package:bloc_learn/Features/cart/bloc/cart_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartBlocBloc cartBlocBloc = CartBlocBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: BlocConsumer<CartBlocBloc, CartBlocState>(
          bloc: cartBlocBloc,
          listener: (context, state) {},
          builder: (context, state) {
            return Container();
          },
        ));
  }
}
