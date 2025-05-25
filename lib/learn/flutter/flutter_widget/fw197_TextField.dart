import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets197_TextField.dart';

class FlutterTextFieldFlutterAllWidgets extends StatefulWidget {
  const FlutterTextFieldFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTextFieldFlutterAllWidgets> createState() =>
      _FlutterTextFieldFlutterAllWidgetsState();
}

class _FlutterTextFieldFlutterAllWidgetsState
    extends State<FlutterTextFieldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 197,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TextField Widget'),
          const H3('Click to View Live'),
          const Live(page: TextFieldWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TextFieldWidget extends StatefulWidget {
   const TextFieldWidget({super.key});
 
   @override
   State<TextFieldWidget> createState() => _TextFieldWidgetState();
 }
 
 class _TextFieldWidgetState extends State<TextFieldWidget> {
   late TextEditingController controller;
   String text = '';
 
   @override
   void initState() {
     super.initState();
     controller = TextEditingController();
   }
 
   @override
   void dispose() {
     controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TextField Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               TextField(
                 controller: controller,
                 onSubmitted: (String value) {
                   setState(() {
                     text = controller.text;
                   });
                 },
               ),
               const SizedBox(height: 30),
               Text(text),
             ],
           ),
         ),
       ),
     );
   }
 }

''';
