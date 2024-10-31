
import '../../warehouses/models/warehouse.dart';

class Company {
  final String image;
  final String title;
  final List<Warehouse> warehouses;

  Company(
      {required this.image,
        required this.title,
        required this.warehouses});
}