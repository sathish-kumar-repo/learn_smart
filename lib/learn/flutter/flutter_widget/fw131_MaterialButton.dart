import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets131_MaterialButton.dart';

class FlutterMaterialButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterMaterialButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterMaterialButtonFlutterAllWidgets> createState() =>
      _FlutterMaterialButtonFlutterAllWidgetsState();
}

class _FlutterMaterialButtonFlutterAllWidgetsState
    extends State<FlutterMaterialButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 131,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('MaterialButton Widget'),
          const H3('Click to View Live'),
          const Live(page: MaterialButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class MaterialButtonWidget extends StatefulWidget {
   const MaterialButtonWidget({super.key});
 
   @override
   State<MaterialButtonWidget> createState() => _MaterialButtonWidgetState();
 }
 
 class _MaterialButtonWidgetState extends State<MaterialButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("MaterialButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: MaterialButton(
           onPressed: () {},
           highlightColor: Colors.orangeAccent,
           highlightElevation: 5,
           splashColor: Colors.redAccent,
           color: Colors.blueGrey,
           child: const Text('Click'),
         ),
       ),
     );
   }
 }

''';
