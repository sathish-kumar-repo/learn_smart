import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets100_FittedBox.dart';

class FlutterFittedBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterFittedBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFittedBoxFlutterAllWidgets> createState() =>
      _FlutterFittedBoxFlutterAllWidgetsState();
}

class _FlutterFittedBoxFlutterAllWidgetsState
    extends State<FlutterFittedBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 100,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FittedBox Widget'),
          const H3('Click to View Live'),
          const Live(page: FittedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FittedBoxWidget extends StatefulWidget {
   const FittedBoxWidget({super.key});
 
   @override
   State<FittedBoxWidget> createState() => _FittedBoxWidgetState();
 }
 
 class _FittedBoxWidgetState extends State<FittedBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FittedBox Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Container(
               height: 25,
               width: 100,
               color: Colors.orangeAccent,
               child: const FittedBox(
                 child: Text(
                   'This is a pretty long text',
                   style: TextStyle(color: Colors.black),
                 ), // Text
               ), // FittedBox
             ),
             const SizedBox(height: 20),
             Container(
               width: 300,
               color: Colors.orangeAccent,
               child: const FittedBox(
                 child: Text(
                   'This is a pretty long text',
                   style: TextStyle(color: Colors.black),
                 ), // Text
               ), // FittedBox
             ),
             const SizedBox(height: 20),
             Container(
               width: double.infinity,
               color: Colors.orangeAccent,
               child: const FittedBox(
                 child: Text(
                   'This is a pretty long text',
                   style: TextStyle(color: Colors.black),
                 ), // Text
               ), // FittedBox
             ),
             const SizedBox(height: 20),
           ],
         ),
       ), // Container
     );
   }
 }

''';
