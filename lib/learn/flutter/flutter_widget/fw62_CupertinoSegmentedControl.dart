import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets62_CupertinoSegmentedControl.dart';

class FlutterCupertinoSegmentedControlFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoSegmentedControlFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoSegmentedControlFlutterAllWidgets> createState() =>
      _FlutterCupertinoSegmentedControlFlutterAllWidgetsState();
}

class _FlutterCupertinoSegmentedControlFlutterAllWidgetsState
    extends State<FlutterCupertinoSegmentedControlFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 62,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoSegmentedControl Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoSegmentedControlWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 
 class CupertinoSegmentedControlWidget extends StatefulWidget {
   const CupertinoSegmentedControlWidget({super.key});
 
   @override
   State<CupertinoSegmentedControlWidget> createState() =>
       _CupertinoSegmentedControlWidgetState();
 }
 
 class _CupertinoSegmentedControlWidgetState
     extends State<CupertinoSegmentedControlWidget> {
   String? _currentText; // nullable string
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoSegmentedControl Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           children: [
             const SizedBox(height: 50),
             CupertinoSegmentedControl(
               selectedColor: Colors.black,
               children: {
                 'Flutter': Container(
                   color: _currentText == 'Flutter'
                       ? Colors.orangeAccent[100]
                       : Colors.white,
                   width: double.infinity,
                   padding: const EdgeInsets.all(10.0),
                   child: const Text('Flutter'),
                 ),
                 'Learn': Container(
                   color: _currentText == 'Learn'
                       ? Colors.orangeAccent[100]
                       : Colors.white,
                   width: double.infinity,
                   padding: const EdgeInsets.all(10.0),
                   child: const Text('Learn'),
                 ),
                 'Smart': Container(
                   color: _currentText == 'Smart'
                       ? Colors.orangeAccent[100]
                       : Colors.white,
                   width: double.infinity,
                   padding: const EdgeInsets.all(10.0),
                   child: const Text('Smart'),
                 ),
               },
               onValueChanged: (String value) {
                 setState(() {
                   _currentText = value;
                 });
               },
             ),
             const SizedBox(height: 50),
             _currentText != null
                 ? Text(
                     _currentText!,
                     style: const TextStyle(fontSize: 50),
                   )
                 : Container()
           ],
         ),
       ),
     );
   }
 }

''';
