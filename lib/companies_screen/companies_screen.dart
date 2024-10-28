import 'package:flutter/material.dart';
import '../data/company_data.dart';
import '../theme/dimensions.dart';
import '../theme/Strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompaniesScreen extends StatefulWidget {
  const CompaniesScreen({super.key});

  @override
  State<CompaniesScreen> createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          companiesListText,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(padding10),
              child: TextField(
                controller: _controller,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: enterTextHint,
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _controller.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black87,
              child: ListView.separated(
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
                      subtitle: Text(warehouseCountText),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/warehouses',
                          arguments: {
                            'title': company.title,
                            'image': company.image,
                          },
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
            ),
          ),
        ],
      ),
    );
  }
}
