import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/design/images.dart';
import 'package:test_app/design/names.dart';

class Company {
  final SvgPicture image;
  final String title;
  final String count;

  Company({
    required this.image,
    required this.title,
    required this.count});
}

final List<Company> companies = [
  Company(
      image: camomilePicture,
      title: camomile,
      count: count),
  Company(
      image: knapweedPicture,
      title: knapweed,
      count: count)
];