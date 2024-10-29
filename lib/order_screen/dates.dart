import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/theme/dimensions.dart';

class DatesScreen extends StatelessWidget {
  final List<DateTime> dates = List.generate(
    30,
    (index) => DateTime.now().add(Duration(days: index)),
  );

  DatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white60),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: dates.map((date) {
            final formattedDate = DateFormat('EEEE, d', 'ru').format(date);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding8),
              child: Card(
                color: Colors.white60,
                child: Container(
                  width: 80,
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 40,
                    width: 30,
                    child: Text(
                      formattedDate,
                      style: const TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
