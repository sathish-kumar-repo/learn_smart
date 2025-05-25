import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets185_SnackBar.dart';

class FlutterSnackBarFlutterAllWidgets extends StatefulWidget {
  const FlutterSnackBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSnackBarFlutterAllWidgets> createState() =>
      _FlutterSnackBarFlutterAllWidgetsState();
}

class _FlutterSnackBarFlutterAllWidgetsState
    extends State<FlutterSnackBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 185,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SnackBar Widget'),
          const H3('Click to View Live'),
          const Live(page: SnackBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SnackBarWidget extends StatefulWidget {
   const SnackBarWidget({super.key});
 
   @override
   State<SnackBarWidget> createState() => _SnackBarWidgetState();
 }
 
 class _SnackBarWidgetState extends State<SnackBarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SnackBar Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ElevatedButton(
           onPressed: () {
             ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                 content: const Text('Learn Smart'),
                 action: SnackBarAction(
                   label: 'Undo',
                   onPressed: () {},
                 ),
               ),
             );
           },
           child: const Text('Show SnackBar'),
         ),
       ),
     );
   }
 }

''';
