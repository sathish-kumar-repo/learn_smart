import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets27_BlockSemantics.dart';

class FlutterBlockSemanticsFlutterAllWidgets extends StatefulWidget {
  const FlutterBlockSemanticsFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterBlockSemanticsFlutterAllWidgets> createState() =>
      _FlutterBlockSemanticsFlutterAllWidgetsState();
}

class _FlutterBlockSemanticsFlutterAllWidgetsState
    extends State<FlutterBlockSemanticsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 27,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('BlockSemantics Widget'),
          const H3('Click to View Live'),
          const Live(page: MyApp()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class MyAppToShowBlockSementics extends StatelessWidget {
   const MyAppToShowBlockSementics({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       showSemanticsDebugger: true,
       debugShowCheckedModeBanner: false,
       home: MyHomePage(),
     );
   }
 }
 
 class MyHomePage extends StatefulWidget {
   const MyHomePage({Key? key}) : super(key: key);
 
   @override
   State<MyHomePage> createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   bool isShow = false;
   @override
   Widget build(BuildContext context) {
     return SizedBox(
       width: double.infinity,
       child: SizedBox(
         width: 500,
         height: double.infinity,
         child: Column(
           children: [
             OutlinedButton(
               onPressed: () => setState(() {
                 isShow = true;
               }),
               child: const Text(
                 'Click',
               ),
             ),
             if (isShow)
               BlockSemantics(
                 blocking: isShow,
                 child: Card(
                   color: Colors.orangeAccent,
                   child: SizedBox(
                     width: 200,
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         const Text('This is a card'),
                         TextButton(
                           onPressed: () => setState(() {
                             isShow = false;
                           }),
                           child: const Text('Close'),
                         )
                       ],
                     ),
                   ),
                 ),
               )
           ],
         ),
       ),
     );
   }
 }
 
 /*import 'package:flutter/material.dart';
 
 class BlockSemanticsWidget extends StatefulWidget {
   const BlockSemanticsWidget({super.key});
 
   @override
   State<BlockSemanticsWidget> createState() => _BlockSemanticsWidgetState();
 }
 
 class _BlockSemanticsWidgetState extends State<BlockSemanticsWidget> {
   @override
   Widget build(BuildContext context) {
     // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
     //   statusBarColor: Colors.transparent,
     // ));
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Flutter Course',
       theme: ThemeData(
         brightness: Brightness.dark,
         scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
         primarySwatch: Colors.blueGrey,
       ),
       home: Center(
         child: Text('Sathish'),
       ),
     );
   }
 }
 */

''';
