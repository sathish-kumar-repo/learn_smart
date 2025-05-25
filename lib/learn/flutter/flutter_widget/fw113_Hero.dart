import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets113_Hero.dart';

class FlutterHeroFlutterAllWidgets extends StatefulWidget {
  const FlutterHeroFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterHeroFlutterAllWidgets> createState() =>
      _FlutterHeroFlutterAllWidgetsState();
}

class _FlutterHeroFlutterAllWidgetsState
    extends State<FlutterHeroFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 113,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Hero Widget'),
          const H3('Click to View Live'),
          const Live(page: HeroWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class HeroWidget extends StatefulWidget {
   const HeroWidget({super.key});
 
   @override
   State<HeroWidget> createState() => _HeroWidgetState();
 }
 
 class _HeroWidgetState extends State<HeroWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Hero Widget"),
         centerTitle: true,
       ),
       body: ListTile(
         trailing: const Hero(
           tag: 'tag-1',
           child: Icon(Icons.person),
         ),
         onTap: () => Navigator.of(context).push(MaterialPageRoute(
           builder: (context) => const SecondPage(),
         )),
         title: const Text("Click on Me"),
       ),
     );
   }
 }
 
 class SecondPage extends StatelessWidget {
   const SecondPage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Second Page"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Hero(
               tag: 'tag-1',
               child: Container(
                 color: Colors.orangeAccent,
                 height: 100,
                 width: 100,
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
