import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets89_ElevatedButton.dart';

class FlutterElevatedButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterElevatedButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterElevatedButtonFlutterAllWidgets> createState() =>
      _FlutterElevatedButtonFlutterAllWidgetsState();
}

class _FlutterElevatedButtonFlutterAllWidgetsState
    extends State<FlutterElevatedButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 89,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ElevatedButton Widget'),
          const H3('Click to View Live'),
          const Live(page: ElevatedButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ElevatedButtonWidget extends StatefulWidget {
   const ElevatedButtonWidget({super.key});
 
   @override
   State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
 }
 
 class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ElevatedButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             const ElevatedButton(
               onPressed: null,
               child: Text('Disabled'),
             ),
             const SizedBox(height: 30),
             ElevatedButton(
               onPressed: () {},
               child: const Text('Enabled'),
             ),
             const SizedBox(height: 30),
             ElevatedButton.icon(
               onPressed: () {},
               icon: const Icon(Icons.message),
               label: const Text('Enabled'),
             ),
             const SizedBox(height: 30),
           ],
         ),
       ),
     );
   }
 }

''';
