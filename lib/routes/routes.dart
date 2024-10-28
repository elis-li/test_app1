import 'package:flutter/material.dart';
import 'package:test_app/warehouses/warehouse_screen.dart';
import '../companies_screen/companies_screen.dart';

final routes =  {
  '/': (context) => const CompaniesScreen(),
  '/warehouses': (context) => WarehouseScreen(),
};