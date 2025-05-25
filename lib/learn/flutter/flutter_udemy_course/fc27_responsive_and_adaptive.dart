import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCResponsiveAndAdaptive extends StatefulWidget {
  const FCResponsiveAndAdaptive({Key? key}) : super(key: key);

  @override
  State<FCResponsiveAndAdaptive> createState() =>
      _FCResponsiveAndAdaptiveState();
}

class _FCResponsiveAndAdaptiveState extends State<FCResponsiveAndAdaptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 22,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Responsive and Adaptive'),
          Img(name: 'responisve_and_adaptive.png'),
        ],
      ),
    );
  }
}
