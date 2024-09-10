part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

abstract class ActionHomeState extends HomeBlocState {}

final class HomeBlocInitial extends HomeBlocState {}

class HomeLoadingState extends HomeBlocState {}

class HomeLoadedSuccessState extends HomeBlocState {
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({required this.products});
}

class HomeErrorState extends HomeBlocState {}

class HomeNavigateToWishlistPageActionState extends ActionHomeState {}

class HomeNavigateToCartPageActionState extends ActionHomeState {}

class HomeProductItemWishlisted extends ActionHomeState {}

class HomeProductItemCartlisted extends ActionHomeState {}
