import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCStfWidgetLifeCycle extends StatefulWidget {
  const FCStfWidgetLifeCycle({Key? key}) : super(key: key);

  @override
  State<FCStfWidgetLifeCycle> createState() => _FCStfWidgetLifeCycleState();
}

class _FCStfWidgetLifeCycleState extends State<FCStfWidgetLifeCycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Deep Dive: Flutter\'s (Stateful) Widget Lifecycle'),
          P('Every Flutter Widget has a built-in lifecycle: A collection of methods that are automatically executed by Flutter (at certain points of time).'),
          P('There are three extremely important (stateful) widget lifecycle methods you should be aware of:'),
          H3('initState():'),
          P('Executed by Flutter when the StatefulWidget\'s State object is initialized'),
          H3('build():'),
          P('Executed by Flutter when the Widget is built for the first time AND after setState() was called'),
          H3('dispose():'),
          P('Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)'),
          P('\nYou will encounter them all multiple times throughout the course - therefore you don\'t have to memorize them now and you will see them in action. It\'s still worth learning about them right now already.'),
        ],
      ),
    );
  }
}
