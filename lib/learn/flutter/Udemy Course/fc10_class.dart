import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCClass extends StatefulWidget {
  const FCClass({Key? key}) : super(key: key);

  @override
  State<FCClass> createState() => _FCClassState();
}

class _FCClassState extends State<FCClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Understanding Classes'),
          Img(name: 'class_in_dart.png'),
          Img(name: 'objects_in_dart.png'),
          Img(name: 'objects_are_constructed_from_classes.png'),
        ],
      ),
    );
  }
}
