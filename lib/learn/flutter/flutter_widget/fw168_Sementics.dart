import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets168_Sementics.dart';

class FlutterSementicsFlutterAllWidgets extends StatefulWidget {
  const FlutterSementicsFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSementicsFlutterAllWidgets> createState() =>
      _FlutterSementicsFlutterAllWidgetsState();
}

class _FlutterSementicsFlutterAllWidgetsState
    extends State<FlutterSementicsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 168,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Sementics Widget'),
          const H3('Click to View Live'),
          const Live(page: SementicsWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SementicsWidget extends StatefulWidget {
   const SementicsWidget({super.key});
 
   @override
   State<SementicsWidget> createState() => _SementicsWidgetState();
 }
 
 class _SementicsWidgetState extends State<SementicsWidget> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       showSemanticsDebugger: true,
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: const Text("Sementics Widget"),
           centerTitle: true,
         ),
         body: Center(
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               // this can be used for people using voice description inside their app
               Semantics(
                 label: 'This is a Flutter logo',
                 child: const FlutterLogo(
                   size: 200,
                 ),
               ),
               // We don't have semantics of this one
               const FlutterLogo(
                 size: 200,
               ),
             ],
           ),
         ),
       ),
     );
   }
 }
 /*
 * It is used by accessibility tools, search engines, and other
 * semantic analysis software to determine the meaning of the application.
 * Text that contains a semanticsLabel property allows to provide details
 * on the information. The Semantics widget annotates the widget tree with
 * an outline of its child.
 * */

''';
