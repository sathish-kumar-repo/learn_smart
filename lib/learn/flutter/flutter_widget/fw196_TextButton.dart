import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets196_TextButton.dart';

class FlutterTextButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterTextButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTextButtonFlutterAllWidgets> createState() =>
      _FlutterTextButtonFlutterAllWidgetsState();
}

class _FlutterTextButtonFlutterAllWidgetsState
    extends State<FlutterTextButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 196,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TextButton Widget'),
          const H3('Click to View Live'),
          const Live(page: TextButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TextButtonWidget extends StatefulWidget {
   const TextButtonWidget({super.key});
 
   @override
   State<TextButtonWidget> createState() => _TextButtonWidgetState();
 }
 
 class _TextButtonWidgetState extends State<TextButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TextButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             TextButton(
               style: TextButton.styleFrom(
                 textStyle: const TextStyle(fontSize: 20),
               ),
               onPressed: null,
               child: const Text('Disabled'),
             ),
             const SizedBox(height: 30),
             TextButton(
               style: TextButton.styleFrom(
                 textStyle: const TextStyle(fontSize: 20),
               ),
               onPressed: () {},
               child: const Text('Enabled'),
             ),
             const SizedBox(height: 30),
             ClipRRect(
               borderRadius: BorderRadius.circular(5),
               child: Stack(
                 children: [
                   Positioned.fill(
                     child: Container(
                       decoration: const BoxDecoration(
                         gradient: LinearGradient(
                           colors: <Color>[
                             Color(0xFF0D47A1),
                             Color(0xFF1976D2),
                             Color(0xFF42A5F5),
                           ],
                         ),
                       ),
                     ),
                   ),
                   TextButton(
                     style: TextButton.styleFrom(
                       padding: const EdgeInsets.all(15),
                       foregroundColor: Colors.white,
                       textStyle: const TextStyle(fontSize: 20),
                     ),
                     onPressed: () {},
                     child: const Text('Gradient'),
                   ),
                 ],
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
