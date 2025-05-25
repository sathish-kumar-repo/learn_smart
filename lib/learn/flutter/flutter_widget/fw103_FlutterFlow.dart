import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets103_Flow.dart';

class FlutterFlutterFlowFlutterAllWidgets extends StatefulWidget {
  const FlutterFlutterFlowFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFlutterFlowFlutterAllWidgets> createState() =>
      _FlutterFlutterFlowFlutterAllWidgetsState();
}

class _FlutterFlutterFlowFlutterAllWidgetsState
    extends State<FlutterFlutterFlowFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 103,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FlutterFlow Widget'),
          const H3('Click to View Live'),
          const Live(page: FlowWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FlutterFlowWidget extends StatefulWidget {
   const FlutterFlowWidget({super.key});
 
   @override
   State<FlutterFlowWidget> createState() => _FlutterFlowWidgetState();
 }
 
 class _FlutterFlowWidgetState extends State<FlutterFlowWidget>
     with SingleTickerProviderStateMixin {
   late AnimationController menuAnimation;
   IconData lastIconClicked = Icons.notifications;
 
   final List<IconData> menuItems = <IconData>[
     Icons.home,
     Icons.new_releases,
     Icons.notifications,
     Icons.settings,
     Icons.menu,
   ];
 
   @override
   void initState() {
     super.initState();
     menuAnimation = AnimationController(
       duration: const Duration(milliseconds: 250),
       vsync: this,
     );
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FlutterFlow Widget"),
         centerTitle: true,
       ),
       body: Flow(
         delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
         children: menuItems
             .map<Widget>(
               (IconData icon) => Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: FloatingActionButton(
                   backgroundColor: lastIconClicked == icon
                       ? Colors.orangeAccent
                       : Colors.grey,
                   splashColor: Colors.orangeAccent,
                   onPressed: () {
                     if (icon != Icons.menu) {
                       setState(() {
                         lastIconClicked = icon;
                       });
                     }
                     menuAnimation.status == AnimationStatus.completed
                         ? menuAnimation.reverse()
                         : menuAnimation.forward();
                   },
                   child: Icon(icon),
                 ),
               ),
             )
             .toList(),
       ),
     );
   }
 }
 
 class FlowMenuDelegate extends FlowDelegate {
   FlowMenuDelegate({required this.menuAnimation})
       : super(repaint: menuAnimation);
   // FlowMenuDelegate({super.repaint, required this.menuAnimation});
 
   final Animation<double> menuAnimation;
 
   @override
   bool shouldRepaint(FlowMenuDelegate oldDelegate) {
     return menuAnimation != oldDelegate.menuAnimation;
   }
 
   @override
   void paintChildren(FlowPaintingContext context) {
     double dx = 0.0;
     for (int i = 0; i < context.childCount; ++i) {
       dx = context.getChildSize(i)!.width * i;
       context.paintChild(
         i,
         transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0),
       );
     }
   }
 }

''';
