import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets33_Checkbox.dart';

class FlutterCheckboxFlutterAllWidgets extends StatefulWidget {
  const FlutterCheckboxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCheckboxFlutterAllWidgets> createState() =>
      _FlutterCheckboxFlutterAllWidgetsState();
}

class _FlutterCheckboxFlutterAllWidgetsState
    extends State<FlutterCheckboxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 33,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Checkbox Widget'),
          const H3('Click to View Live'),
          const Live(page: CheckboxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CheckboxWidget extends StatefulWidget {
   const CheckboxWidget({super.key});
 
   @override
   State<CheckboxWidget> createState() => _CheckboxWidgetState();
 }
 
 class _CheckboxWidgetState extends State<CheckboxWidget> {
   bool? isChecked = false;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Checkbox Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Checkbox(
           value: isChecked,
           activeColor: Colors.pinkAccent,
           tristate: true,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(30),
           ),
           checkColor: Colors.black,
           hoverColor: Colors.grey,
           autofocus: true,
           focusColor: Colors.white60,
           // isError: true,
           splashRadius: 30,
           mouseCursor: SystemMouseCursors.help,
           onChanged: (newBool) {
             setState(() {
               isChecked = newBool;
             });
           },
         ),
       ),
     );
   }
 }

''';
