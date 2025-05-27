import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCInitState extends StatefulWidget {
  const FCInitState({Key? key}) : super(key: key);

  @override
  State<FCInitState> createState() => _FCInitStateState();
}

class _FCInitStateState extends State<FCInitState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 13,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Using initState'),
          Img(name: 'initStateFlutter.png'),
        ],
      ),
    );
  }
}
