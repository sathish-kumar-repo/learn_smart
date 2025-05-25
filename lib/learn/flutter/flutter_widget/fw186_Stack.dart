import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets186_Stack.dart';

class FlutterStackFlutterAllWidgets extends StatefulWidget {
  const FlutterStackFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterStackFlutterAllWidgets> createState() =>
      _FlutterStackFlutterAllWidgetsState();
}

class _FlutterStackFlutterAllWidgetsState
    extends State<FlutterStackFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 186,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Stack Widget'),
          const H3('Click to View Live'),
          const Live(page: StackWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class StackWidget extends StatefulWidget {
   const StackWidget({super.key});
 
   @override
   State<StackWidget> createState() => _StackWidgetState();
 }
 
 class _StackWidgetState extends State<StackWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Stack Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Stack(
           children: [
             Center(
               child: Image.asset(
                 'assets/images/2.jpg',
               ),
             ),
             Center(
               child: Image.asset(
                 'assets/images/3.jpg',
                 width: 200,
               ),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
