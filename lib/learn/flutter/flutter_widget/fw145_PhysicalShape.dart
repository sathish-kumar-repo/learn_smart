import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets145_PhysicalShape.dart';

class FlutterPhysicalShapeFlutterAllWidgets extends StatefulWidget {
  const FlutterPhysicalShapeFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPhysicalShapeFlutterAllWidgets> createState() =>
      _FlutterPhysicalShapeFlutterAllWidgetsState();
}

class _FlutterPhysicalShapeFlutterAllWidgetsState
    extends State<FlutterPhysicalShapeFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 145,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PhysicalShape Widget'),
          const H3('Click to View Live'),
          const Live(page: PhysicalShapeWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PhysicalShapeWidget extends StatefulWidget {
   const PhysicalShapeWidget({super.key});
 
   @override
   State<PhysicalShapeWidget> createState() => _PhysicalShapeWidgetState();
 }
 
 class _PhysicalShapeWidgetState extends State<PhysicalShapeWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("PhysicalShape Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: PhysicalShape(
           elevation: 5.0,
           clipper: ShapeBorderClipper(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(40.0),
             ),
           ),
           color: Colors.orangeAccent,
           child: const SizedBox(
              ,
             width: 250,
             child: Center(
               child: Icon(
                 Icons.flutter_dash,
                 size: 100,
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
