import 'package:flutter/material.dart';
import 'theme/test_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/widgets.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ru');
  runApp(const TestApp());
}


