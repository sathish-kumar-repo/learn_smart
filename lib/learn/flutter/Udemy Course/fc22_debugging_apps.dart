import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCDebugingFlutterApps extends StatefulWidget {
  const FCDebugingFlutterApps({Key? key}) : super(key: key);

  @override
  State<FCDebugingFlutterApps> createState() => _FCDebugingFlutterAppsState();
}

class _FCDebugingFlutterAppsState extends State<FCDebugingFlutterApps> {
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
          H1('Debugging Flutter Apps'),
          Img(name: 'debug_apps.png'),
          Note(
              'During development you might see error message, but published in app store, the user can\'t see the error but th app will very likely just crash')
        ],
      ),
    );
  }
}
