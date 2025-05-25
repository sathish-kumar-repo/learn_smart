import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets22_AspectRadio.dart';

class FlutterAspectRadioFlutterAllWidgets extends StatefulWidget {
  const FlutterAspectRadioFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAspectRadioFlutterAllWidgets> createState() =>
      _FlutterAspectRadioFlutterAllWidgetsState();
}

class _FlutterAspectRadioFlutterAllWidgetsState
    extends State<FlutterAspectRadioFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 22,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AspectRadio Widget'),
          const H3('Click to View Live'),
          const Live(page: AspectRadioWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 import 'package:learn_smart/CustomWidgets/standardWidget.dart';
 
 class AspectRadioWidget extends StatefulWidget {
   const AspectRadioWidget({super.key});
 
   @override
   State<AspectRadioWidget> createState() => _AspectRadioWidgetState();
 }
 
 class _AspectRadioWidgetState extends State<AspectRadioWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AspectRadio Widget"),
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             const SizedBox(height: 20),
             const H3(  'Height is Minimum'),
             const SizedBox(height: 20),
             Container(
               color: Colors.pinkAccent,
               alignment: Alignment.center,
               width: double.infinity,
               height: 150.0,
               child: AspectRatio(
                 aspectRatio: 16 / 9,
                 child: Container(
                   color: Colors.grey,
                 ),
               ),
             ),
             const SizedBox(height: 20),
             const H3(  "Height is Normal"),
             const SizedBox(height: 20),
             Container(
               color: Colors.pinkAccent,
               alignment: Alignment.center,
               width: double.infinity,
               height: 300.0,
               child: AspectRatio(
                 aspectRatio: 16 / 9,
                 child: Container(
                   color: Colors.grey,
                 ),
               ),
             ),
             const SizedBox(height: 20),
             const H3(  "Height is Maximum"),
             const SizedBox(height: 20),
             Container(
               color: Colors.pinkAccent,
               alignment: Alignment.center,
               width: double.infinity,
               height: 500.0,
               child: AspectRatio(
                 aspectRatio: 16 / 9,
                 child: Container(
                   color: Colors.grey,
                 ),
               ),
             ),
             const SizedBox(height: 20),
           ],
         ),
       ),
     );
   }
 }

''';
