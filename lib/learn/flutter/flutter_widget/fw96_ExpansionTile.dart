import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets96_ExpansionTile.dart';

class FlutterExpansionTileFlutterAllWidgets extends StatefulWidget {
  const FlutterExpansionTileFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterExpansionTileFlutterAllWidgets> createState() =>
      _FlutterExpansionTileFlutterAllWidgetsState();
}

class _FlutterExpansionTileFlutterAllWidgetsState
    extends State<FlutterExpansionTileFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 96,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ExpansionTile Widget'),
          const H3('Click to View Live'),
          const Live(page: ExpansionTileWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ExpansionTileWidget extends StatefulWidget {
   const ExpansionTileWidget({super.key});
 
   @override
   State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
 }
 
 class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
   bool _customIcon = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ExpansionTile Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           ExpansionTile(
             title: const Text('Expansion Tile'),
             trailing: Icon(
               _customIcon
                   ? Icons.arrow_drop_down_circle
                   : Icons.arrow_drop_down,
             ),
             children: const [
               ListTile(
                 title: Text('learn smart'),
               ),
             ],
             onExpansionChanged: (bool expanded) {
               setState(() => _customIcon = expanded);
             },
           ),
           ExpansionTile(
             title: const Text('Expansion Tile'),
             children: const [
               ListTile(
                 title: Text('learn smart'),
               ),
             ],
             onExpansionChanged: (bool expanded) {},
           ),
           ExpansionTile(
             title: const Text('Expansion Tile'),
             onExpansionChanged: (bool expanded) {},
             controlAffinity: ListTileControlAffinity.leading,
             children: const [
               ListTile(
                 title: Text('learn smart'),
               ),
             ],
           ),
         ],
       ),
     );
   }
 }

''';
