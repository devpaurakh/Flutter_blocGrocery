part of 'home_bloc_bloc.dart';

@immutable
sealed class HomeBlocEvent {}

class HomeInitialEvent extends HomeBlocEvent{}

class HomeProductWishlistButtonClickedEvent extends HomeBlocEvent {}

class HomeProductCartButtonClickedEvent extends HomeBlocEvent {}

class HomeWishlistNavigateEvent extends HomeBlocEvent {}

class HomeCartNavigateEvent extends HomeBlocEvent {}
