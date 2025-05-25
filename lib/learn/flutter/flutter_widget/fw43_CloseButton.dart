import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets43_CloseButton.dart';

class FlutterCloseButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterCloseButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCloseButtonFlutterAllWidgets> createState() =>
      _FlutterCloseButtonFlutterAllWidgetsState();
}

class _FlutterCloseButtonFlutterAllWidgetsState
    extends State<FlutterCloseButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 43,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CloseButton Widget'),
          const H3('Click to View Live'),
          const Live(page: CloseButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CloseButtonWidget extends StatefulWidget {
   const CloseButtonWidget({super.key});
 
   @override
   State<CloseButtonWidget> createState() => _CloseButtonWidgetState();
 }
 
 class _CloseButtonWidgetState extends State<CloseButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CloseButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: CloseButton(
           color: Colors.red,
           onPressed: () {
             debugPrint('Do Something');
           },
         ),
       ),
     );
   }
 }

''';
