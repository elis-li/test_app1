import 'package:flutter/material.dart';

import '../design/dimensions.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _list();
  }
}
Widget _list(){
  return ListView.separated(
    itemCount: 2,
    separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(height: height6);
    },
    itemBuilder: (BuildContext context, int index){
      return const CompaniesScreen();
    },
  );
}