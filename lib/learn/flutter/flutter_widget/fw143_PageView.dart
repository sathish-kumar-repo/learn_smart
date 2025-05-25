import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets143_PageView.dart';

class FlutterPageViewFlutterAllWidgets extends StatefulWidget {
  const FlutterPageViewFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPageViewFlutterAllWidgets> createState() =>
      _FlutterPageViewFlutterAllWidgetsState();
}

class _FlutterPageViewFlutterAllWidgetsState
    extends State<FlutterPageViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 143,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PageView Widget'),
          const H3('Click to View Live'),
          const Live(page: PageViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PageViewWidget extends StatefulWidget {
   const PageViewWidget({super.key});
 
   @override
   State<PageViewWidget> createState() => _PageViewWidgetState();
 }
 
 class _PageViewWidgetState extends State<PageViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("PageView Widget"),
         centerTitle: true,
       ),
       body: PageView(
         children: [
           Container(
             color: Colors.orangeAccent,
             child: const Center(
               child: Text(
                 '1',
                 style: TextStyle(fontSize: 100),
               ),
             ),
           ),
           Container(
             color: Colors.redAccent,
             child: const Center(
               child: Text(
                 '2',
                 style: TextStyle(fontSize: 100),
               ),
             ),
           ),
           Container(
             color: Colors.blueGrey,
             child: const Center(
               child: Text(
                 '3',
                 style: TextStyle(fontSize: 100),
               ),
             ),
           ),
         ],
       ),
     );
   }
 }

''';
