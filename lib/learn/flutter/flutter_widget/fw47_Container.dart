import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets47_Container.dart';

class FlutterContainerFlutterAllWidgets extends StatefulWidget {
  const FlutterContainerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterContainerFlutterAllWidgets> createState() =>
      _FlutterContainerFlutterAllWidgetsState();
}

class _FlutterContainerFlutterAllWidgetsState
    extends State<FlutterContainerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 47,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Container Widget'),
          const H3('Click to View Live'),
          const Live(page: ContainerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ContainerWidget extends StatefulWidget {
   const ContainerWidget({super.key});
 
   @override
   State<ContainerWidget> createState() => _ContainerWidgetState();
 }
 
 class _ContainerWidgetState extends State<ContainerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Container Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Container(
           padding: const EdgeInsets.all(8.0),
           color: Colors.purpleAccent,
           alignment: Alignment.center,
           constraints: const BoxConstraints.expand(height: 200),
           transform: Matrix4.rotationZ(0.2),
           transformAlignment: Alignment.center,
           child: const Text(
             'Learn Smart',
             style: TextStyle(color: Colors.white),
           ),
         ),
       ),
     );
   }
 }

''';
