import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets110_GridTile.dart';

class FlutterGridTileFlutterAllWidgets extends StatefulWidget {
  const FlutterGridTileFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterGridTileFlutterAllWidgets> createState() =>
      _FlutterGridTileFlutterAllWidgetsState();
}

class _FlutterGridTileFlutterAllWidgetsState
    extends State<FlutterGridTileFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 110,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('GridTile Widget'),
          const H3('Click to View Live'),
          const Live(page: GridTileWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class GridTileWidget extends StatefulWidget {
   const GridTileWidget({super.key});
 
   @override
   State<GridTileWidget> createState() => _GridTileWidgetState();
 }
 
 class _GridTileWidgetState extends State<GridTileWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("GridTile Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         height: 400,
         width: 300,
         child: GridTile(
           header: Container(
             height: 40,
             color: Colors.black38,
             child: const Center(
               child: Text('Header'),
             ),
           ),
           footer: Container(
             height: 40,
             color: Colors.black38,
             child: const Center(
               child: Text('Header'),
             ),
           ),
           child: Image.asset(
             'assets/images/2.jpg',
             fit: BoxFit.cover,
           ),
         ),
       ),
     );
   }
 }

''';
