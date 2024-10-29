import '../../items_screen/items.dart';

class Warehouse {
  final String name;
  final String workingHours;
  final List<Item> items;

  Warehouse({
    required this.name,
    required this.workingHours,
    required this.items});
}
