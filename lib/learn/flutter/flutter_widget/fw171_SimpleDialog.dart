import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets171_SimpleDialog.dart';

class FlutterSimpleDialogFlutterAllWidgets extends StatefulWidget {
  const FlutterSimpleDialogFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSimpleDialogFlutterAllWidgets> createState() =>
      _FlutterSimpleDialogFlutterAllWidgetsState();
}

class _FlutterSimpleDialogFlutterAllWidgetsState
    extends State<FlutterSimpleDialogFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 171,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SimpleDialog Widget'),
          const H3('Click to View Live'),
          const Live(page: SimpleDialogWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SimpleDialogWidget extends StatefulWidget {
   const SimpleDialogWidget({super.key});
 
   @override
   State<SimpleDialogWidget> createState() => _SimpleDialogWidgetState();
 }
 
 class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SimpleDialog Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ElevatedButton(
           onPressed: () {
             showDialog(
               con  context,
               builder: (context) => SimpleDialog(
                 title: const Text('Simple Dialog'),
                 contentPadding: const EdgeInsets.all(20.0),
                 children: [
                   const Text('More Information'),
                   TextButton(
                     onPressed: () {
                       Navigator.of(context).pop();
                     },
                     child: const Text('Close'),
                   )
                 ],
               ),
             );
           },
           child: const Text('Show Dialog'),
         ),
       ),
     );
   }
 }

''';
