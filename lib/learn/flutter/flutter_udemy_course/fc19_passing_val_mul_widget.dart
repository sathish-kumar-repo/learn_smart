import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class PassingValuesAcrossMultipleWidgets extends StatefulWidget {
  const PassingValuesAcrossMultipleWidgets({Key? key}) : super(key: key);

  @override
  State<PassingValuesAcrossMultipleWidgets> createState() =>
      _PassingValuesAcrossMultipleWidgetsState();
}

class _PassingValuesAcrossMultipleWidgetsState
    extends State<PassingValuesAcrossMultipleWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 19,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Passing Values across Multiple Widgets'),
          Img(name: 'pass_val_mul_wid.png'),
        ],
      ),
    );
  }
}
