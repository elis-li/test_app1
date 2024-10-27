import 'package:flutter/material.dart';
import 'package:test_app/design/dimensions.dart';

class CompaniesItem extends StatelessWidget{
  final Function() onTap;
  const CompaniesItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height60,
      child: Card(
        color: Colors.white60,
        margin: EdgeInsets.zero,
        elevation: elevation006,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius6)),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius6),
          onTap: onTap,
          child: Row(
            children:

          ),
        ),
      ),
    );
  }

