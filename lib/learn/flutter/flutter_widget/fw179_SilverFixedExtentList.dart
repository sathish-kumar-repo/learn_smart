import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets179_SilverFixedExtentList.dart';

class FlutterSilverFixedExtentListFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverFixedExtentListFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterSilverFixedExtentListFlutterAllWidgets> createState() =>
      _FlutterSilverFixedExtentListFlutterAllWidgetsState();
}

class _FlutterSilverFixedExtentListFlutterAllWidgetsState
    extends State<FlutterSilverFixedExtentListFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 179,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverFixedExtentList Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverFixedExtentListWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverFixedExtentListWidget extends StatefulWidget {
   const SilverFixedExtentListWidget({super.key});
 
   @override
   State<SilverFixedExtentListWidget> createState() =>
       _SilverFixedExtentListWidgetState();
 }
 
 class _SilverFixedExtentListWidgetState
     extends State<SilverFixedExtentListWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("SilverFixedExtentList Widget"),
         centerTitle: true,
       ),
       body: CustomScrollView(
         slivers: [
           SliverFixedExtentList(
             itemExtent: 50.0,
             delegate: SliverChildBuilderDelegate(
               (context, index) {
                 return Container(
                   alignment: Alignment.center,
                   color: index.isEven ? Colors.white12 : Colors.white38,
                   child: Text(
                     'Item \${index + 1}',
                     style: const TextStyle(
                       color: Colors.white,
                     ),
                   ),
                 );
               },
               childCount: 30,
             ),
           )
         ],
       ),
     );
   }
 }

''';
