import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCGenericTypes extends StatefulWidget {
  const FCGenericTypes({Key? key}) : super(key: key);

  @override
  State<FCGenericTypes> createState() => _FCGenericTypesState();
}

class _FCGenericTypesState extends State<FCGenericTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Understanding Generic Types'),
          Img(name: 'generic_type_dart.png'),
          P('List is a generic type that is able to work together with other values(for eg: List of colors, String etc..')
        ],
      ),
    );
  }
}
