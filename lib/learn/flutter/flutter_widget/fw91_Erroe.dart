import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets91_Erroe.dart';

class FlutterErroeFlutterAllWidgets extends StatefulWidget {
  const FlutterErroeFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterErroeFlutterAllWidgets> createState() =>
      _FlutterErroeFlutterAllWidgetsState();
}

class _FlutterErroeFlutterAllWidgetsState
    extends State<FlutterErroeFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 91,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Error Widget'),
          const H3('Click to View Live'),
          const Live(page: FlutterErrorWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ErrorWidget extends StatefulWidget {
   const ErrorWidget({super.key});
 
   @override
   State<ErrorWidget> createState() => _ErrorWidgetState();
 }
 
 class _ErrorWidgetState extends State<ErrorWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Error Widget"),
         centerTitle: true,
       ),
       body: Center(child: Text(code)),
     );
   }
 }
 
 var code = \'''
 void main() {
   ErrorWidget.builder = (FlutterErrorDetails details) {
     bool isDebug = false; // to see red screen is debug mode
     assert(() {
       isDebug = true;
       return true;
     }()); // this function is only triggered in debug mode
     if (isDebug) {
       return ErrorWidget(details.exception);
     }
     return Container(
       alignment: Alignment.center,
       child: Text(
         'Error\n\${details.exception}',
         style: TextStyle(
           color: Colors.orangeAccent,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
       ),
     );
   };
   runApp(const MyApp());
 }\''';

''';
