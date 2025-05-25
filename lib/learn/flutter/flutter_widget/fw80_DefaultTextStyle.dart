import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets80_DefaultTextStyle.dart';

class FlutterDefaultTextStyleFlutterAllWidgets extends StatefulWidget {
  const FlutterDefaultTextStyleFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDefaultTextStyleFlutterAllWidgets> createState() =>
      _FlutterDefaultTextStyleFlutterAllWidgetsState();
}

class _FlutterDefaultTextStyleFlutterAllWidgetsState
    extends State<FlutterDefaultTextStyleFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 80,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DefaultTextStyle Widget'),
          const H3('Click to View Live'),
          const Live(page: DefaultTextStyleWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DefaultTextStyleWidget extends StatefulWidget {
   const DefaultTextStyleWidget({super.key});
 
   @override
   State<DefaultTextStyleWidget> createState() => _DefaultTextStyleWidgetState();
 }
 
 class _DefaultTextStyleWidgetState extends State<DefaultTextStyleWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DefaultTextStyle Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Learn Smart'),
             DefaultTextStyle(
               style: TextStyle(
                 fontSize: 36,
                 color: Colors.blue,
               ),
               child: Column(
                 children: [
                   Text('Learn Smart'),
                   Text(
                     'Learn Smart',
                     style: TextStyle(fontSize: 24),
                   ),
                   Text(
                     'Learn Smart',
                     style: TextStyle(color: Colors.red),
                   ),
                 ],
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
