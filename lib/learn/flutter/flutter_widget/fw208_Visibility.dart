import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets208_Visibility.dart';

class FlutterVisibilityFlutterAllWidgets extends StatefulWidget {
  const FlutterVisibilityFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterVisibilityFlutterAllWidgets> createState() =>
      _FlutterVisibilityFlutterAllWidgetsState();
}

class _FlutterVisibilityFlutterAllWidgetsState
    extends State<FlutterVisibilityFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 208,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Visibility Widget'),
          const H3('Click to View Live'),
          const Live(page: VisibilityWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class VisibilityWidget extends StatefulWidget {
   const VisibilityWidget({super.key});
 
   @override
   State<VisibilityWidget> createState() => _VisibilityWidgetState();
 }
 
 class _VisibilityWidgetState extends State<VisibilityWidget> {
   bool isVisible = true;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Visibility Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             TextButton(
               onPressed: () {
                 setState(() {
                   isVisible = !isVisible;
                 });
               },
               child: const Text(
                 'Show / Hide',
               ),
             ),
             Image.asset(
               'assets/images/3.jpg',
               width: 300,
             ),
             const SizedBox(height: 30),
             Visibility(
               visible: isVisible,
               child: Image.asset(
                 'assets/images/4.jpg',
                 width: 300,
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
