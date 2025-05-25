import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets123_LimitedBox.dart';

class FlutterLimitedBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterLimitedBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterLimitedBoxFlutterAllWidgets> createState() =>
      _FlutterLimitedBoxFlutterAllWidgetsState();
}

class _FlutterLimitedBoxFlutterAllWidgetsState
    extends State<FlutterLimitedBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 123,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('LimitedBox Widget'),
          const H3('Click to View Live'),
          const Live(page: LimitedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class LimitedBoxWidget extends StatefulWidget {
   const LimitedBoxWidget({super.key});
 
   @override
   State<LimitedBoxWidget> createState() => _LimitedBoxWidgetState();
 }
 
 class _LimitedBoxWidgetState extends State<LimitedBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.grey,
       appBar: AppBar(
         title: const Text("LimitedBox Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical, // only Height is working
           // scrollDirection: Axis.horizontal, // only width is working
           child: LimitedBox(
             maxHeight: 50,
             maxWidth:
                 300, // this is because the limited box only if the parent is unconstrained widget
             child: Card(
               child: ListTile(
                 leading: Icon(
                   Icons.person,
                   size: 50,
                 ),
                 title: Text('Learn Smart'),
               ),
             ), //
           ),
         ),
       ),
     );
   }
 }

''';
