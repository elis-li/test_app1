import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../companies_screen/models/company.dart';
import '../theme/Strings.dart';
import '../theme/dimensions.dart';

class CardCompany extends StatelessWidget{
  const CardCompany({super.key});

  @override
  Widget build(BuildContext context) {
    final Company company =
    ModalRoute.of(context)!.settings.arguments as Company;
      return Container(
        height: height40,
        padding: const EdgeInsets.all(padding10),
        color: Colors.black87,
        child: Row(
          children: [
            const SizedBox(
              width: width10,
            ),
            SvgPicture.asset(
              company.image,
              width: width25,
              height: height25,
            ),
            const SizedBox(
              width: width10,
            ),
            Text(
              company.title,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
                warehouseCountText(company),
            )
          ],
        ),
      );
  }
}

