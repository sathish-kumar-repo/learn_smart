import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets170_Shortcuts.dart';

class FlutterShortcutsFlutterAllWidgets extends StatefulWidget {
  const FlutterShortcutsFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterShortcutsFlutterAllWidgets> createState() =>
      _FlutterShortcutsFlutterAllWidgetsState();
}

class _FlutterShortcutsFlutterAllWidgetsState
    extends State<FlutterShortcutsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 170,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Shortcuts Widget'),
          const H3('Click to View Live'),
          const Live(page: ShortcutsWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';
 
 class IncrementIntent extends Intent {
   const IncrementIntent();
 }
 
 class DecrementIntent extends Intent {
   const DecrementIntent();
 }
 
 class ShortcutsWidget extends StatefulWidget {
   const ShortcutsWidget({super.key});
 
   @override
   State<ShortcutsWidget> createState() => _ShortcutsWidgetState();
 }
 
 class _ShortcutsWidgetState extends State<ShortcutsWidget> {
   int count = 0;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Shortcuts Widget"),
         centerTitle: true,
       ),
       body: Shortcuts(
         shortcuts: <ShortcutActivator, Intent>{
           LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
           LogicalKeySet(LogicalKeyboardKey.arrowDown): const DecrementIntent(),
         },
         child: Actions(
           actions: {
             IncrementIntent: CallbackAction(
               onInvoke: (intent) => setState(() {
                 count = count + 1;
               }),
             ),
             DecrementIntent: CallbackAction(
               onInvoke: (intent) => setState(() {
                 count = count - 1;
               }),
             ),
           },
           // focus is important otherwise is not work
           child: Focus(
             child: Center(
               child: Text(
                 'Counter: \$count',
                 style: const TextStyle(
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
