import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets37_CircleAvatar.dart';

class FlutterCircleAvatarFlutterAllWidgets extends StatefulWidget {
  const FlutterCircleAvatarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCircleAvatarFlutterAllWidgets> createState() =>
      _FlutterCircleAvatarFlutterAllWidgetsState();
}

class _FlutterCircleAvatarFlutterAllWidgetsState
    extends State<FlutterCircleAvatarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 37,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CircleAvatar Widget'),
          const H3('Click to View Live'),
          const Live(page: CircleAvatarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CircleAvatarWidget extends StatefulWidget {
   const CircleAvatarWidget({super.key});
 
   @override
   State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
 }
 
 class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CircleAvatar Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: CircleAvatar(
           radius: 55,
           backgroundImage: AssetImage('assets/images/3.jpg'),
           backgroundColor: Colors.deepPurple,
           // foregroundImage: AssetImage('assets/images/1.jpg'),
           foregroundColor: Colors.pinkAccent,
           child: Text(
             'Hi',
             style: TextStyle(
               fontSize: 23,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),
       ),
     );
   }
 }
 /*
 double radius: Raidus of the avatar. If this is specified, neither minRadius nor maxRadius may be specified. If neither this, minRadius nor maxRadius is specified, defaults to 20.
 double minRadius: The minimum size of the avatar.If this is specified, raidus may not be specified. Defaults to 0.
 double maxRadius: he maximum size of the avatar. If this is specified, raidus may not be specified. Defaults to double.infinity.*/

''';
