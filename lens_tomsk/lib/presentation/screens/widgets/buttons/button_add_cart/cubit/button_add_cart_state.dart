import 'package:flutter/material.dart';

abstract class ButtonAddCartState {}

class AddState extends ButtonAddCartState {
final Color addColor;
AddState({required this.addColor});
}

class NotAddState extends ButtonAddCartState {
final Color notAddColor;
NotAddState({required this.notAddColor});
}