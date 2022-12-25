import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/ordering_screen/components/body_order.dart';

class OrderingScreen extends StatelessWidget {
  const OrderingScreen({Key? key, required this.totalPrice}) : super(key: key);
  final int totalPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BodyOrder(totalPrice:totalPrice),
    );
  }
}
