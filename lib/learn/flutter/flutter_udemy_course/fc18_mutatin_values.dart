import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCMutatingValues extends StatefulWidget {
  const FCMutatingValues({Key? key}) : super(key: key);

  @override
  State<FCMutatingValues> createState() => _FCMutatingValuesState();
}

class _FCMutatingValuesState extends State<FCMutatingValues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 18,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Mutating Values in Memory'),
          Img(name: 'mutatin_values_in_memory.png'),
        ],
      ),
    );
  }
}
