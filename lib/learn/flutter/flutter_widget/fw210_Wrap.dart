import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets210_Wrap.dart';

class FlutterWrapFlutterAllWidgets extends StatefulWidget {
  const FlutterWrapFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterWrapFlutterAllWidgets> createState() =>
      _FlutterWrapFlutterAllWidgetsState();
}

class _FlutterWrapFlutterAllWidgetsState
    extends State<FlutterWrapFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 210,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Wrap Widget'),
          const H3('Click to View Live'),
          const Live(page: WrapWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class WrapWidget extends StatefulWidget {
   const WrapWidget({super.key});
 
   @override
   State<WrapWidget> createState() => _WrapWidgetState();
 }
 
 class _WrapWidgetState extends State<WrapWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Wrap Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: Wrap(
             spacing: 10.0,
             runSpacing: 5.0,
             children: List.generate(
               10,
               (index) => const Chip(
                 avatar: CircleAvatar(
                   backgroundColor: Colors.orangeAccent,
                   child: Icon(Icons.person),
                 ),
                 label: Text('Mapp'),
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
