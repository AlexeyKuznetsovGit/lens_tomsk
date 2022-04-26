import 'package:flutter/material.dart';

abstract class ButtonFavouriteState {}

class FavouriteState extends ButtonFavouriteState {
final Color favouriteColor;
FavouriteState({required this.favouriteColor});
}

class NotFavouriteState extends ButtonFavouriteState {
final Color notFavouriteColor;
NotFavouriteState({required this.notFavouriteColor});
}