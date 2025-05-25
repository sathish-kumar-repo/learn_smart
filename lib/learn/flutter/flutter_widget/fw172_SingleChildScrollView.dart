import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets172_SingleChildScrollView.dart';

class FlutterSingleChildScrollViewFlutterAllWidgets extends StatefulWidget {
  const FlutterSingleChildScrollViewFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterSingleChildScrollViewFlutterAllWidgets> createState() =>
      _FlutterSingleChildScrollViewFlutterAllWidgetsState();
}

class _FlutterSingleChildScrollViewFlutterAllWidgetsState
    extends State<FlutterSingleChildScrollViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 172,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SingleChildScrollView Widget'),
          const H3('Click to View Live'),
          const Live(page: SingleChildScrollViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SingleChildScrollViewWidget extends StatefulWidget {
   const SingleChildScrollViewWidget({super.key});
 
   @override
   State<SingleChildScrollViewWidget> createState() =>
       _SingleChildScrollViewWidgetState();
 }
 
 class _SingleChildScrollViewWidgetState
     extends State<SingleChildScrollViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SingleChildScrollView Widget"),
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: Column(
           children: List.generate(
             50,
             (index) => ListTile(
               title: Text('Item \${index + 1}'),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
