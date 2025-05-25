import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets163_SafeArea.dart';

class FlutterSafeAreaFlutterAllWidgets extends StatefulWidget {
  const FlutterSafeAreaFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSafeAreaFlutterAllWidgets> createState() =>
      _FlutterSafeAreaFlutterAllWidgetsState();
}

class _FlutterSafeAreaFlutterAllWidgetsState
    extends State<FlutterSafeAreaFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 163,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SafeArea Widget'),
          const H3('Click to View Live'),
          const Live(page: SafeAreaWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SafeAreaWidget extends StatefulWidget {
   const SafeAreaWidget({super.key});
 
   @override
   State<SafeAreaWidget> createState() => _SafeAreaWidgetState();
 }
 
 class _SafeAreaWidgetState extends State<SafeAreaWidget> {
   @override
   Widget build(BuildContext context) {
     return const SafeArea(
       child: Text('Learn Smart'),
     );
     //body:
   }
 }

''';
