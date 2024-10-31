import 'package:flutter/material.dart';
import 'package:test_app/order_screen/card_company.dart';
import 'package:test_app/order_screen/dates.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white60),
          title: const Text(
            'Данные заказа',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            const CardCompany(),
            DatesScreen(),
          ],
        ));
  }
}
