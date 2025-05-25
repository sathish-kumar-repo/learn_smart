import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets127_ListWheelScrollView.dart';

class FlutterListWheelScrollViewFlutterAllWidgets extends StatefulWidget {
  const FlutterListWheelScrollViewFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterListWheelScrollViewFlutterAllWidgets> createState() =>
      _FlutterListWheelScrollViewFlutterAllWidgetsState();
}

class _FlutterListWheelScrollViewFlutterAllWidgetsState
    extends State<FlutterListWheelScrollViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 127,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ListWheelScrollView Widget'),
          const H3('Click to View Live'),
          const Live(page: ListWheelScrollViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ListWheelScrollViewWidget extends StatefulWidget {
   const ListWheelScrollViewWidget({super.key});
 
   @override
   State<ListWheelScrollViewWidget> createState() =>
       _ListWheelScrollViewWidgetState();
 }
 
 class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ListWheelScrollView Widget"),
         centerTitle: true,
       ),
       body: ListWheelScrollView(
         itemExtent: 100,
         diameterRatio: 2,
         // offAxisFraction: 2,
         // squeeze: 2,
         children: List.generate(
           20,
           (index) => ListTile(
             title: const Text('Learn Smart'),
             onTap: () {},
             leading: const Icon(Icons.person),
             trailing: const Icon(Icons.menu),
           ),
         ),
       ),
     );
   }
 }

''';
