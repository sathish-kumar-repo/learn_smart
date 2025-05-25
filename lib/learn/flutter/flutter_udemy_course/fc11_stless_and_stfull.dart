import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCStlStfWidget extends StatefulWidget {
  const FCStlStfWidget({Key? key}) : super(key: key);

  @override
  State<FCStlStfWidget> createState() => _FCStlStfWidgetState();
}

class _FCStlStfWidgetState extends State<FCStlStfWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Stateless vs Stateful Widgets'),
          Img(name: 'stless_stfull.png'),
        ],
      ),
    );
  }
}
