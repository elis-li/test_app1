import 'package:flutter/material.dart';
import 'package:test_app/order_screen/card_company.dart';
import 'package:test_app/order_screen/dates.dart';

class OrderScreen extends StatelessWidget{
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CardCompany(),
        DatesScreen()
      ],
    );
  }
}


