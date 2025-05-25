import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCMaterialDesign extends StatefulWidget {
  const FCMaterialDesign({Key? key}) : super(key: key);

  @override
  State<FCMaterialDesign> createState() => _FCMaterialDesignState();
}

class _FCMaterialDesignState extends State<FCMaterialDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('About Material Design'),
          P('Google\'s flexible design system'),
          Li('A set of suggestion, rules & guidelines that help you build beautiful user interfaces'),
          Li('Highly customizable and extendable'),
        ],
      ),
    );
  }
}
