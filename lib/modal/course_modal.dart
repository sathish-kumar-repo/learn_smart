import 'package:flutter/widgets.dart';

class Course {
  final String course;
  final String img;
  final Widget Function() page;
  final String route;

  Course({
    required this.course,
    required this.img,
    required this.page,
    required this.route,
  });
}
