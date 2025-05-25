import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets29_BottomSheet.dart';

class FlutterBottomSheetFlutterAllWidgets extends StatefulWidget {
  const FlutterBottomSheetFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterBottomSheetFlutterAllWidgets> createState() =>
      _FlutterBottomSheetFlutterAllWidgetsState();
}

class _FlutterBottomSheetFlutterAllWidgetsState
    extends State<FlutterBottomSheetFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 29,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('BottomSheet Widget'),
          const H3('Click to View Live'),
          const Live(page: BottomSheetWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class BottomSheetWidget extends StatefulWidget {
   const BottomSheetWidget({super.key});
 
   @override
   State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
 }
 
 class _BottomSheetWidgetState extends State<BottomSheetWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("BottomSheet Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ElevatedButton(
           onPressed: () {
             showModalBottomSheet(
               con  context,
               builder: (BuildContext context) {
                 return SizedBox(
                   height: 400,
                   child: Center(
                     child: ElevatedButton(
                       child: const Text('Close'),
                       onPressed: () {
                         Navigator.pop(context);
                       },
                     ),
                   ),
                 );
               },
             );
           },
           child: const Text('Modal Bottom Sheet'),
         ),
       ),
     );
   }
 }

''';
