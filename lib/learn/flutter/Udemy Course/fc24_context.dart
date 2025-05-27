import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCContext extends StatefulWidget {
  const FCContext({Key? key}) : super(key: key);

  @override
  State<FCContext> createState() => _FCContextState();
}

class _FCContextState extends State<FCContext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 24,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Understanding context'),
          P('In Flutter, the context refers to the location of a widget in the widget tree. It provides information about the surrounding environment and services that the widget might need. For example, the context can contain information such as the theme of the app, the locale, the screen size, and more.'),
          Note('The location in the tree where this widget builds.'),
          Img(name: 'contet_flutter.png'),
        ],
      ),
    );
  }
}
