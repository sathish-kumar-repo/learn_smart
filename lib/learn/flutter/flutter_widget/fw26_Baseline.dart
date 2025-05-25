import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets26_Baseline.dart';

class FlutterBaselineFlutterAllWidgets extends StatefulWidget {
  const FlutterBaselineFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterBaselineFlutterAllWidgets> createState() =>
      _FlutterBaselineFlutterAllWidgetsState();
}

class _FlutterBaselineFlutterAllWidgetsState
    extends State<FlutterBaselineFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 26,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Baseline Widget'),
          const H3('Click to View Live'),
          const Live(page: BaselineWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class BaselineWidget extends StatefulWidget {
   const BaselineWidget({super.key});
 
   @override
   State<BaselineWidget> createState() => _BaselineWidgetState();
 }
 
 class _BaselineWidgetState extends State<BaselineWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Baseline Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 width: 200,
                 height: 200,
                 color: Colors.orange,
                 child: const Baseline(
                   baseline: 0,
                   baselineType: TextBaseline.alphabetic,
                   child: FlutterLogo(size: 50),
                 ),
               ),
               const SizedBox(height: 50),
               Container(
                 width: 200,
                 height: 200,
                 color: Colors.orange,
                 child: const Baseline(
                   baseline: 50,
                   baselineType: TextBaseline.alphabetic,
                   child: FlutterLogo(size: 50),
                 ),
               ),
             ],
           ),
         ),
       ),
     );
   }
 }

''';
