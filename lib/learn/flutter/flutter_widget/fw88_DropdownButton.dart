import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets88_DropdownButton.dart';

class FlutterDropdownButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterDropdownButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDropdownButtonFlutterAllWidgets> createState() =>
      _FlutterDropdownButtonFlutterAllWidgetsState();
}

class _FlutterDropdownButtonFlutterAllWidgetsState
    extends State<FlutterDropdownButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 88,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DropdownButton Widget'),
          const H3('Click to View Live'),
          const Live(page: DropdownButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DropdownButtonWidget extends StatefulWidget {
   const DropdownButtonWidget({super.key});
 
   @override
   State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
 }
 
 class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
   String dropdownValue = 'One';
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DropdownButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: DropdownButton<String>(
           value: dropdownValue,
           icon: const Icon(Icons.menu),
           style: const TextStyle(color: Colors.white),
           underline: Container(
             height: 2,
             color: Colors.black,
           ),
           onChanged: (String? newValue) {
             setState(() {
               dropdownValue = newValue!;
             });
           },
           items: const [
             DropdownMenuItem<String>(
               value: 'One',
               child: Text(
                 'One',
                 style: TextStyle(color: Colors.black),
               ),
             ),
             DropdownMenuItem<String>(
               value: 'Two',
               child: Text(
                 'Two',
                 style: TextStyle(color: Colors.black),
               ),
             ),
             DropdownMenuItem<String>(
               value: 'Three',
               child: Text(
                 'Three',
                 style: TextStyle(color: Colors.black),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
