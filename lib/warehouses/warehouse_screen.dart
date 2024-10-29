import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../companies_screen/models/company.dart';
import '../theme/dimensions.dart';

class WarehouseScreen extends StatelessWidget {
  const WarehouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Company company =
        ModalRoute.of(context)!.settings.arguments as Company;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(
            color: Colors.white60,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: width40,
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
                    textAlign: TextAlign.center,
                  ),
              const SizedBox(
                width: width80,
              )
            ],
          )),
        body: Container(
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(padding8),
            child: ListView.builder(
              itemCount: company.warehouses.length,
              itemBuilder: (context, index) {
                final warehouse = company.warehouses[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(radius6),
                  ),
                  child: ExpansionTile(
                      title: Row(
                        children: [
                Text(warehouse.name),
                          const Spacer(),
                          Text(warehouse.workingHours
                          ),
                  ],
                      ),
                  children: warehouse.items.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(opacity03),
                        borderRadius: BorderRadius.circular(radius6),
                      ),
                      child: ListTile(
                        title: Row(
                          children: [
                        Text(item.name),
                        const Spacer(),
                        Text('${item.price} р'
                        ),
                        ],
                        ),
                        subtitle: Text('Количество: ${item.amount} шт'),
                        onTap: (){
                          Navigator.pushNamed(
                            context,
                            '/order',
                            arguments: company,
                          );
                        },
                      ),
                    );
                  }).toList(),
                  ),
                );
              },
            ),
          ),
        ),
      );
  }
}
