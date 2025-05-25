import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets174_SizedBox.dart';

class FlutterSizedBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterSizedBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSizedBoxFlutterAllWidgets> createState() =>
      _FlutterSizedBoxFlutterAllWidgetsState();
}

class _FlutterSizedBoxFlutterAllWidgetsState
    extends State<FlutterSizedBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 174,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SizedBox Widget'),
          const H3('Click to View Live'),
          const Live(page: SizedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SizedBoxWidget extends StatefulWidget {
   const SizedBoxWidget({super.key});
 
   @override
   State<SizedBoxWidget> createState() => _SizedBoxWidgetState();
 }
 
 class _SizedBoxWidgetState extends State<SizedBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SizedBox Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: SizedBox(
           // if height and width is not given, then sized box entire width and height
           width: 300.0,
           height: 300.0,
           child: Card(
             color: Colors.orangeAccent,
             child: Center(
               child: Text(
                 'Learn Smart',
                 style: TextStyle(
                   fontSize: 30,
                 ),
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
