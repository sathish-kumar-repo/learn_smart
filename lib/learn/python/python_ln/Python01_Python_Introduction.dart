import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Python_Introduction extends StatefulWidget {
  const Python_Introduction({Key? key}) : super(key: key);

  @override
  State<Python_Introduction> createState() => _Python_IntroductionState();
}

class _Python_IntroductionState extends State<Python_Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('Python Introduction'),
          Li('Python is an interpreted, object-oriented, high-level programming language that can be used for a wide variety of applications.'),
          Li('Python is a powerful general-purpose programming language.'),
          Li('First developed in the late 1980s by Guido van Rossum.'),
          Li('Python is open source programming language.'),
          Li('Guido van Rossum named it after the BBC Comedy TV series Monty Python’s Flying Circus'),
          Link('https://www.tutorjoes.in/python_programming_tutorial/index'),
        ],
      ),
    );
  }
}
