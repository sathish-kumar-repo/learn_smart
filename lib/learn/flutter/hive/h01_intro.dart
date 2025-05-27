import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCCodeCompile extends StatefulWidget {
  const FCCodeCompile({Key? key}) : super(key: key);

  @override
  State<FCCodeCompile> createState() => _FCCodeCompileState();
}

class _FCCodeCompileState extends State<FCCodeCompile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Flutter Hive'),
          H3('What is Hive?'),
          Li('Hive is a light weight and blazing fast key-value database written in pure Dart'),
          Li('We can save application data on device and get it extremely fast whenever needed.'),
          Note('Hive stores the data in index DB in case of web application'),
          H3('Why Hive'),
          Li('Cross Platform'),
          Li('Simple and Powerful'),
          Li('Strong Encryption'),
          Li('No Native Dependencies'),
          Li('Great performance'),
          H3('See this Benchmark'),
          Img(name: ''),
        ],
      ),
    );
  }
}
