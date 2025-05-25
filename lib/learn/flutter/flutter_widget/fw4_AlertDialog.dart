import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets04_AlertDialog.dart';

class FlutterAlertDialogFlutterAllWidgets extends StatefulWidget {
  const FlutterAlertDialogFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAlertDialogFlutterAllWidgets> createState() =>
      _FlutterAlertDialogFlutterAllWidgetsState();
}

class _FlutterAlertDialogFlutterAllWidgetsState
    extends State<FlutterAlertDialogFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AlertDialog Widget'),
          const H3('Click to View Live'),
          const Live(page: AlertDialogWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AlertDialogWidget extends StatefulWidget {
   const AlertDialogWidget({super.key});
 
   @override
   State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
 }
 
 class _AlertDialogWidgetState extends State<AlertDialogWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AlertDialog Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ElevatedButton(
           child: const Text("Show Alert Dialog"),
           onPressed: () {
             showDialog(
               con  context,
               builder: (context) => AlertDialog(
                 actions: [
                   TextButton(
                     onPressed: () {
                       Navigator.of(context).pop();
                     },
                     child: const Text("Close"),
                   )
                 ],
                 title: const Text("Flutter Tutorial"),
                 contentPadding: const EdgeInsets.all(20.0),
                 content: const Text("This is the Alert Dialog"),
               ),
             );
           },
         ),
       ),
     );
   }
 }

''';
