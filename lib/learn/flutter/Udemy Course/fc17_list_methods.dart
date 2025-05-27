import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCListMethods extends StatefulWidget {
  const FCListMethods({Key? key}) : super(key: key);

  @override
  State<FCListMethods> createState() => _FCListMethodsState();
}

class _FCListMethodsState extends State<FCListMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 17,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('List Methods'),
          H3('map()'),
          Img(name: 'LM_map.png'),
          H3('shuffle()'),
          Img(name: 'LM_shuffle.png'),
        ],
      ),
    );
  }
}
