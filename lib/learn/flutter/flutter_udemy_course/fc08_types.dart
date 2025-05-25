import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCTypes extends StatefulWidget {
  const FCTypes({Key? key}) : super(key: key);

  @override
  State<FCTypes> createState() => _FCTypesState();
}

class _FCTypesState extends State<FCTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Understanding types'),
          Img(name: 'dart_types.png'),
          Note('Built-in, third party & own types'),
          H3('Some core types'),
          Img(name: 'some_core_types_in_dart.png'),
          H3('Widgets are Objects'),
          Img(name: 'widgets_are_objects.png'),
          P('Objects are core concept in dart'),
        ],
      ),
    );
  }
}
