import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets81_Dismissible.dart';

class FlutterDismissibleFlutterAllWidgets extends StatefulWidget {
  const FlutterDismissibleFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDismissibleFlutterAllWidgets> createState() =>
      _FlutterDismissibleFlutterAllWidgetsState();
}

class _FlutterDismissibleFlutterAllWidgetsState
    extends State<FlutterDismissibleFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 81,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Dismissible Widget'),
          const H3('Click to View Live'),
          const Live(page: DismissibleWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DismissibleWidget extends StatefulWidget {
   const DismissibleWidget({super.key});
 
   @override
   State<DismissibleWidget> createState() => _DismissibleWidgetState();
 }
 
 class _DismissibleWidgetState extends State<DismissibleWidget> {
   List<int> items = List<int>.generate(100, (int index) => index);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Dismissible Widget"),
         centerTitle: true,
       ),
       body: ListView.builder(
         itemCount: items.length,
         padding: EdgeInsets.symmetric(vertical: 16),
         itemBuilder: (BuildContext context, int index) {
           return Dismissible(
             background: Container(
               color: Colors.red,
               child: Icon(Icons.delete),
             ),
             key: ValueKey<int>(items[index]),
             onDismissed: (DismissDirection direction) {
               setState(() {
                 items.removeAt(index);
               });
             },
             child: ListTile(
               title: Text(
                 'Items \${items[index]}',
               ),
             ),
           );
         },
       ),
     );
   }
 }

''';
