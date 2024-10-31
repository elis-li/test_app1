import 'package:test_app/constants/constants.dart';
import 'package:test_app/items_screen/items.dart';
import 'package:test_app/warehouses/models/warehouse.dart';
import '../companies_screen/models/company.dart';
import '../theme/images.dart';
import '../theme/Strings.dart';

final List<Company> companies = [
  Company(
    image: camomilePicture,
    title: camomileText,
    warehouses: [
      Warehouse(
        name: warehouse1,
        workingHours: workingHours1,
        items: [
          Item(name: cement, amount: count10, price: price100 ),
          Item(name: boards, amount: count100, price: price10 ),
        ],
      ),
      Warehouse(
        name: warehouse2,
        workingHours: workingHours2,
        items: [
          Item(name: cement, amount: count20, price: price90),
          Item(name: boards, amount: count50, price: price20),
        ],
      ),
    ],
  ),
  Company(
    image: knapweedPicture,
    title: knapweedText,
    warehouses: [
      Warehouse(
          name: warehouse1,
          workingHours: workingHours2,
          items: [
        Item(name: cement, amount: count100, price: price1000),
        Item(name: boards, amount: count10, price: price100),
      ]),
      Warehouse(
        name: warehouse2,
        workingHours: workingHours3,
        items: [
          Item(name: cement, amount: count200, price: price900),
          Item(name: boards, amount: count5, price: price2),
        ],
      ),
    ],
  )
];
