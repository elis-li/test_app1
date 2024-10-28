import 'package:flutter/material.dart';
import '../data/company_data.dart';
import '../design/dimensions.dart';
import '../theme/Strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: const Text(
            companiesList,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(children: [
          Container(
            color: Colors.black54,
          ),
          ListView.separated(
            itemCount: companies.length,
            itemBuilder: (context, index) {
              final company = companies[index];
              return Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(radius6),
                 ),
                child: ListTile(
                  leading: SvgPicture.asset(
                    company.image,
                    width: width40,
                    height: height40,
                  ),
                  title: Text(company.title),
                  subtitle: Text(warehouseCount),
                  onTap: (){
                    Navigator.pushNamed(
                      context,
                      '/warehouses',
                      arguments: company.title,
                    );
                  },
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: height6,
              );
            },
          ),
        ]));
  }
}
