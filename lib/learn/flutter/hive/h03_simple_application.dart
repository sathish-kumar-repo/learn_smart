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
          H1('Simple Note'),
          Img(name: 'hive1.png'),
          Img(name: 'hive2.png'),
          Img(name: 'hive3.png'),
          Img(name: 'hive4.png'),
          Img(name: 'hive5.png'),
          Note(
              'for each model class that you want ot store and load within your hive database storage you need to follow three simple steps'),
          Img(name: 'transform_model.png'),
          Img(name: 'hive6.png'),
        ],
      ),
    );
  }
}
