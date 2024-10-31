import 'package:flutter/material.dart';
import 'package:test_app/order_screen/order_screen.dart';
import 'package:test_app/warehouses/warehouse_screen.dart';
import '../companies_screen/companies_screen.dart';

final routes =  {
  '/': (context) => const CompaniesScreen(),
  '/warehouses': (context) => const WarehouseScreen(),
  '/order': (context) => const OrderScreen(),
};