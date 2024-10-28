import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/dimensions.dart';

class WarehouseScreen extends StatelessWidget {
  const WarehouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String companyTitle = args['title'];
    final String companyImage = args['image'];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: width40,
              ),
              SvgPicture.asset(
                companyImage,
                width: width25,
                height: height25,
              ),
                const SizedBox(
                  width: width10,
                ),
                Text(
                    companyTitle,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
              const SizedBox(
                width: width80,
              )
            ],
          )),
    );
  }
}
