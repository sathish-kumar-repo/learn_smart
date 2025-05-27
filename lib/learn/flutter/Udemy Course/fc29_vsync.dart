import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCVsync extends StatefulWidget {
  const FCVsync({Key? key}) : super(key: key);

  @override
  State<FCVsync> createState() => _FCVsyncState();
}

class _FCVsyncState extends State<FCVsync> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 29,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Vsync in animation'),
          P('Vsync parameter is repsonsible for making sure that this animation executes for every frame. So, typically 60 times per second'),
        ],
      ),
    );
  }
}
