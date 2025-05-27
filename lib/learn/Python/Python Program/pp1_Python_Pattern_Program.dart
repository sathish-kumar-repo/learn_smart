import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Python/Python%20Program/topicName/pythonProgramTopic.dart';

class PyPattern extends StatefulWidget {
  const PyPattern({Key? key}) : super(key: key);

  @override
  State<PyPattern> createState() => _PyPatternState();
}

class _PyPatternState extends State<PyPattern> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: pythonProgramTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          H1('Pattern Program'),
          Img(name: 'Pattern_Programs_in_python1.jpg', height: 1000)
        ],
      ),
    );
  }
}
