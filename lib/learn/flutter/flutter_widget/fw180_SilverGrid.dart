import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets180_SilverGrid.dart';

class FlutterSilverGridFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverGridFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSilverGridFlutterAllWidgets> createState() =>
      _FlutterSilverGridFlutterAllWidgetsState();
}

class _FlutterSilverGridFlutterAllWidgetsState
    extends State<FlutterSilverGridFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 180,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverGrid Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverGridWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverGridWidget extends StatefulWidget {
   const SilverGridWidget({super.key});
 
   @override
   State<SilverGridWidget> createState() => _SilverGridWidgetState();
 }
 
 class _SilverGridWidgetState extends State<SilverGridWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SilverGrid Widget"),
         centerTitle: true,
       ),
       body: CustomScrollView(
         slivers: [
           SliverGrid(
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
             ),
             delegate: SliverChildBuilderDelegate(
               (BuildContext context, int index) {
                 return Container(
                   alignment: Alignment.center,
                   color: Colors.orange[100 * (index % 9 + 1)],
                   child: Text('Item \${index + 1}'),
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
