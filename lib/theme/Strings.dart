import '../companies_screen/models/company.dart';

const String camomileText = "Ромашка";
const String knapweedText = "Василек";
const String companiesListText = "Список компаний";
String warehouseCountText(Company company) {
  return 'Количество складов: ${company.warehouses.length}';
}
const String enterTextHint = "Введите название компании или адрес";
const String warehouse1 = "Склад №1";
const String warehouse2 = "Склад №2";
const String cement = "Бетон";
const String boards = "Доски";
const String workingHours1 = "9:00-13:00";
const String workingHours2 = "10:00-18:00";
const String workingHours3 = "9:00-18:00";