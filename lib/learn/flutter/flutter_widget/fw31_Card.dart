import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets31_Card.dart';

class FlutterCardFlutterAllWidgets extends StatefulWidget {
  const FlutterCardFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCardFlutterAllWidgets> createState() =>
      _FlutterCardFlutterAllWidgetsState();
}

class _FlutterCardFlutterAllWidgetsState
    extends State<FlutterCardFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 31,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Card Widget'),
          const H3('Click to View Live'),
          const Live(page: CardWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CardWidget extends StatefulWidget {
   const CardWidget({super.key});
 
   @override
   State<CardWidget> createState() => _CardWidgetState();
 }
 
 class _CardWidgetState extends State<CardWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           title: const Text("Card Widget"),
           centerTitle: true,
         ),
         body: Center(
           child: Card(
             elevation: 20,
             color: Colors.orangeAccent,
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   const SizedBox(height: 8),
                   const Text('This is a Flutter Card'),
                   TextButton(
                     onPressed: () {},
                     child: const Text('Press'),
                   )
                 ],
               ),
             ),
           ),
         ));
   }
 }

''';
