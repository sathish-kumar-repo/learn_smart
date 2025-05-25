import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets111_GridTileBar.dart';

class FlutterGridTileBarFlutterAllWidgets extends StatefulWidget {
  const FlutterGridTileBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterGridTileBarFlutterAllWidgets> createState() =>
      _FlutterGridTileBarFlutterAllWidgetsState();
}

class _FlutterGridTileBarFlutterAllWidgetsState
    extends State<FlutterGridTileBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 111,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('GridTileBar Widget'),
          const H3('Click to View Live'),
          const Live(page: GridTileBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class GridTileBarWidget extends StatefulWidget {
   const GridTileBarWidget({super.key});
 
   @override
   State<GridTileBarWidget> createState() => _GridTileBarWidgetState();
 }
 
 class _GridTileBarWidgetState extends State<GridTileBarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("GridTileBar Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         height: 400,
         width: 300,
         child: GridTile(
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

''';
