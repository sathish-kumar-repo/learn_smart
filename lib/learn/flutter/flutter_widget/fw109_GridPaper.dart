import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets109_GridPaper.dart';

class FlutterGridPaperFlutterAllWidgets extends StatefulWidget {
  const FlutterGridPaperFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterGridPaperFlutterAllWidgets> createState() =>
      _FlutterGridPaperFlutterAllWidgetsState();
}

class _FlutterGridPaperFlutterAllWidgetsState
    extends State<FlutterGridPaperFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 109,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('GridPaper Widget'),
          const H3('Click to View Live'),
          const Live(page: GridPaperWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class GridPaperWidget extends StatefulWidget {
   const GridPaperWidget({super.key});
 
   @override
   State<GridPaperWidget> createState() => _GridPaperWidgetState();
 }
 
 class _GridPaperWidgetState extends State<GridPaperWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("GridPaper Widget"),
         centerTitle: true,
       ),
       body: const SizedBox(
         height: double.infinity,
         width: double.infinity,
         child: GridPaper(
           color: Colors.purpleAccent,
           divisions: 1,
           interval: 210,
           subdivisions: 6,
         ),
       ),
     );
   }
 }

''';
