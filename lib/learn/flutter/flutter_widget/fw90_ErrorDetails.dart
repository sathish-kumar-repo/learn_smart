import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets90_ErrorDetails.dart';

class FlutterErrorDetailsFlutterAllWidgets extends StatefulWidget {
  const FlutterErrorDetailsFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterErrorDetailsFlutterAllWidgets> createState() =>
      _FlutterErrorDetailsFlutterAllWidgetsState();
}

class _FlutterErrorDetailsFlutterAllWidgetsState
    extends State<FlutterErrorDetailsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 90,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ErrorDetails Widget'),
          const H3('Click to View Live'),
          const Live(page: ErrorDetailsWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ErrorDetailsWidget extends StatefulWidget {
   const ErrorDetailsWidget({super.key});
 
   @override
   State<ErrorDetailsWidget> createState() => _ErrorDetailsWidgetState();
 }
 
 class _ErrorDetailsWidgetState extends State<ErrorDetailsWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ErrorDetails Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             ElevatedButton(
               onPressed: () {
                 // this code is following after the main
                 try {
                   throw ('This is an error');
                 } catch (error) {
                   // debugPrint('Error: \$error');
                   debugPrint(error.toString());
                 }
               },
               child: const Text('Click here'),
             ),
             ElevatedButton(
               onPressed: () {
                 try {
                   throw ('This is an error');
                 } catch (error) {
                   FlutterError.reportError(
                     FlutterErrorDetails(
                       exception: error,
                       library: 'CUSTOM MESSAGE 1',
                       con  ErrorSummary('CUSTOM MESSAGE 2'),
                     ),
                   );
                 }
               },
               child: const Text('Click here'),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
