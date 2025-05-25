import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets112_GridView.dart';

class FlutterGridViewFlutterAllWidgets extends StatefulWidget {
  const FlutterGridViewFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterGridViewFlutterAllWidgets> createState() =>
      _FlutterGridViewFlutterAllWidgetsState();
}

class _FlutterGridViewFlutterAllWidgetsState
    extends State<FlutterGridViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 112,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('GridView Widget'),
          const H3('Click to View Live'),
          const Live(page: GridViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class GridViewWidget extends StatefulWidget {
   const GridViewWidget({super.key});
 
   @override
   State<GridViewWidget> createState() => _GridViewWidgetState();
 }
 
 class _GridViewWidgetState extends State<GridViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("GridView Widget"),
         centerTitle: true,
       ),
       body: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
         ),
         itemCount: 10,
         itemBuilder: (context, index) => GridTile(
           header: const GridTileBar(
             backgroundColor: Colors.black45,
             leading: Icon(Icons.person),
             title: Text('Learn Smart'),
             trailing: Icon(Icons.menu),
           ),
           footer: const GridTileBar(
             backgroundColor: Colors.black45,
             leading: Icon(Icons.favorite),
           ),
           child: Image.asset(
             'assets/images/2.jpg',
             fit: BoxFit.cover,
           ),
         ),
       ),
     );
   }
 }
 /*
 * You can use this also
 * GridView(
 *     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
 *     children:[]
 * )
 * */

''';
