import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets164_Scaffold.dart';

class FlutterScaffoldFlutterAllWidgets extends StatefulWidget {
  const FlutterScaffoldFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterScaffoldFlutterAllWidgets> createState() =>
      _FlutterScaffoldFlutterAllWidgetsState();
}

class _FlutterScaffoldFlutterAllWidgetsState
    extends State<FlutterScaffoldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 164,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Scaffold Widget'),
          const H3('Click to View Live'),
          const Live(page: ScaffoldWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ScaffoldWidget extends StatefulWidget {
   const ScaffoldWidget({super.key});
 
   @override
   State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
 }
 
 class _ScaffoldWidgetState extends State<ScaffoldWidget> {
   int _count = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.orangeAccent,
       appBar: AppBar(
         backgroundColor: Colors.black,
         title: const Text("Scaffold Widget"),
       ),
       body: Center(
         child: ElevatedButton(
           onPressed: () {},
           child: const Text('Click'),
         ),
       ),
       drawer: const Drawer(
         child: SafeArea(
           child: ListTile(
             title: Text('Click'),
           ),
         ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.white,
         onPressed: () => setState(() => _count++),
         tooltip: 'Increment Counter',
         child: const Icon(
           Icons.add,
           color: Colors.black,
         ),
       ),
       bottomNavigationBar: BottomNavigationBar(
         items: const [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             label: 'Profile',
           ),
         ],
         onTap: (int index) {},
         selectedItemColor: Colors.orangeAccent,
       ),
     );
   }
 }

''';
