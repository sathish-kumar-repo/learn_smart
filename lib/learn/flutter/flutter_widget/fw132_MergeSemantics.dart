import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets132_MergeSemantics.dart';

class FlutterMergeSemanticsFlutterAllWidgets extends StatefulWidget {
  const FlutterMergeSemanticsFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterMergeSemanticsFlutterAllWidgets> createState() =>
      _FlutterMergeSemanticsFlutterAllWidgetsState();
}

class _FlutterMergeSemanticsFlutterAllWidgetsState
    extends State<FlutterMergeSemanticsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 132,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('MergeSemantics Widget'),
          const H3('Click to View Live'),
          const Live(page: MergeSemanticsWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class MergeSemanticsWidget extends StatefulWidget {
   const MergeSemanticsWidget({super.key});
 
   @override
   State<MergeSemanticsWidget> createState() => _MergeSemanticsWidgetState();
 }
 
 class _MergeSemanticsWidgetState extends State<MergeSemanticsWidget> {
   @override
   Widget build(BuildContext context) {
     var darkBlue = const Color(0XFF12202F);
     return MaterialApp(
       showSemanticsDebugger: true,
       theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: const Text("MergeSemantics Widget"),
           centerTitle: true,
         ),
         body: const Column(
           children: [
             //The semantics is only one block right now
             MergeSemantics(
               child: Row(
                 children: [
                   Text('Learn'),
                   Text('Smart'),
                 ],
               ),
             ),
             SizedBox(height: 10),
             //But if we remove the merge semantic widget you will see that we have two different semantic block
             Row(
               children: [
                 Text('Learn'),
                 Text('Smart'),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }

''';
