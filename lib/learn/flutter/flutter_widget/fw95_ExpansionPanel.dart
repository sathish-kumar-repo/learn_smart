import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets95_ExpansionPanel.dart';

class FlutterExpansionPanelFlutterAllWidgets extends StatefulWidget {
  const FlutterExpansionPanelFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterExpansionPanelFlutterAllWidgets> createState() =>
      _FlutterExpansionPanelFlutterAllWidgetsState();
}

class _FlutterExpansionPanelFlutterAllWidgetsState
    extends State<FlutterExpansionPanelFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 95,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ExpansionPanel Widget'),
          const H3('Click to View Live'),
          const Live(page: ExpansionPanelWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class Item {
   Item({
     required this.headerText,
     required this.expandedText,
     this.isExpanded = false,
   });
   String headerText;
   String expandedText;
   bool isExpanded;
 }
 
 class ExpansionPanelWidget extends StatefulWidget {
   const ExpansionPanelWidget({super.key});
 
   @override
   State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
 }
 
 class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
   final List<Item> _data = List<Item>.generate(
     10,
     (int index) {
       return Item(
         header  'Item \$index',
         expanded  'This is item number \$index',
       );
     },
   );
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ExpansionPanel Widget"),
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: ExpansionPanelList(
           expansionCallback: (int index, bool isExpanded) {
             setState(() {
               // print('\${_data[index]} - \${_data[index].isExpanded}');
               // print(isExpanded);
               // print('\${_data[index]} - \${_data[index].isExpanded}');
 
               //one way
               // _data[index].isExpanded = !_data[index].isExpanded;
               //another way
               _data[index].isExpanded = isExpanded;
             });
           },
           children: _data.map<ExpansionPanel>((Item item) {
             return ExpansionPanel(
               headerBuilder: (BuildContext context, bool isExpanded) {
                 return ListTile(
                   title: Text(item.headerText),
                 );
               },
               body: ListTile(
                 title: Text(item.expandedText),
                 subtitle: const Text('To delete this item, click trash icon'),
                 trailing: const Icon(
                   Icons.delete,
                   color: Colors.orangeAccent,
                 ),
                 onTap: () {
                   setState(() {
                     // _data.removeWhere((element) => false)
                     _data.removeWhere(
                       (Item currentItem) => item == currentItem,
                     );
                   });
                 },
               ),
               isExpanded: item.isExpanded,
             );
           }).toList(),
         ),
       ),
     );
   }
 }

''';
