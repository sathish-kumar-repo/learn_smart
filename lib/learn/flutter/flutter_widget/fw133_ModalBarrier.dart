import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets133_ModalBarrier.dart';

class FlutterModalBarrierFlutterAllWidgets extends StatefulWidget {
  const FlutterModalBarrierFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterModalBarrierFlutterAllWidgets> createState() =>
      _FlutterModalBarrierFlutterAllWidgetsState();
}

class _FlutterModalBarrierFlutterAllWidgetsState
    extends State<FlutterModalBarrierFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 133,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ModalBarrier Widget'),
          const H3('Click to View Live'),
          const Live(page: ModalBarrierWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ModalBarrierWidget extends StatefulWidget {
   const ModalBarrierWidget({super.key});
 
   @override
   State<ModalBarrierWidget> createState() => _ModalBarrierWidgetState();
 }
 
 class _ModalBarrierWidgetState extends State<ModalBarrierWidget> {
   bool activated = true;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ModalBarrier Widget"),
         centerTitle: true,
       ),
       body: Stack(
         children: [
           Center(
             child: ElevatedButton(
               onPressed: () {
                 setState(() {
                   activated = !activated;
                 });
               },
               child: const Text('Reactivate'),
             ),
           ),
           if (activated)
             Opacity(
               opacity: 0.4,
               child: ModalBarrier(
                 dismissible: true,
                 // dismissible: false,// neve remove modal barrier
                 onDismiss: () {
                   setState(() {
                     activated = !activated;
                     // print('yes');
                   });
                 },
                 color: Colors.orangeAccent,
               ),
             )
         ],
       ),
     );
   }
 }
 /*
 * A widget that prevents the user from interacting with widgets
 * behind itself. The modal barrier is the scrim that is rendered behind
 * each route, which generally prevents the user from interacting with
 * the route below the current route, and normally partially obscures such routes.
 *
 * */

''';
