import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets146_PlaceHolder.dart';

class FlutterPlaceHolderFlutterAllWidgets extends StatefulWidget {
  const FlutterPlaceHolderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPlaceHolderFlutterAllWidgets> createState() =>
      _FlutterPlaceHolderFlutterAllWidgetsState();
}

class _FlutterPlaceHolderFlutterAllWidgetsState
    extends State<FlutterPlaceHolderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 146,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PlaceHolder Widget'),
          const H3('Click to View Live'),
          const Live(page: PlaceHolderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PlaceHolderWidget extends StatefulWidget {
   const PlaceHolderWidget({super.key});
 
   @override
   State<PlaceHolderWidget> createState() => _PlaceHolderWidgetState();
 }
 
 class _PlaceHolderWidgetState extends State<PlaceHolderWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("PlaceHolder Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           Placeholder(
             fallbackHeight:
                 300, // not working in wrap with Row but work with column
             fallbackWidth:
                 50, // not working in wrap with column but work with row
             color: Colors.orangeAccent,
             // child: Text('Not is used'),
           ),
         ],
       ),
     );
   }
 }

''';
