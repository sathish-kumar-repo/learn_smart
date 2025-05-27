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
        activeIndex: 5,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Dart & Flutter Code is Compiled'),
          Img(name: 'FDCodeCompiled.png'),
        ],
      ),
    );
  }
}
