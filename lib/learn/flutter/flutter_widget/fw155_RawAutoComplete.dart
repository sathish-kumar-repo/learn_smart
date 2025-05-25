import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets155_RawAutoComplete.dart';

class FlutterRawAutoCompleteFlutterAllWidgets extends StatefulWidget {
  const FlutterRawAutoCompleteFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRawAutoCompleteFlutterAllWidgets> createState() =>
      _FlutterRawAutoCompleteFlutterAllWidgetsState();
}

class _FlutterRawAutoCompleteFlutterAllWidgetsState
    extends State<FlutterRawAutoCompleteFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 155,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RawAutoComplete Widget'),
          const H3('Click to View Live'),
          const Live(page: RawAutoCompleteWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RawAutoCompleteWidget extends StatefulWidget {
   const RawAutoCompleteWidget({super.key});
 
   @override
   State<RawAutoCompleteWidget> createState() => _RawAutoCompleteWidgetState();
 }
 
 class _RawAutoCompleteWidgetState extends State<RawAutoCompleteWidget> {
   static const List<String> theList = <String>[
     'venusaur',
     'blastoise',
     'charizard',
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("RawAutoComplete Widget"),
         centerTitle: true,
       ),
       body: RawAutocomplete(
         optionsBuilder: (TextEditingValue textEditingValue) {
           return theList.where((String item) {
             return item
                 .toLowerCase()
                 .contains(textEditingValue.text.toLowerCase());
           });
         },
         fieldViewBuilder: (
           BuildContext context,
           TextEditingController textEditingController,
           FocusNode focusNode,
           VoidCallback onFieldSubmitted,
         ) {
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               controller: textEditingController,
               focusNode: focusNode,
               onFieldSubmitted: (String value) {
                 onFieldSubmitted();
               },
             ),
           );
         },
         optionsViewBuilder: (
           BuildContext context,
           AutocompleteOnSelected<String> onSelected,
           Iterable<String> options,
         ) {
           return Align(
             alignment: Alignment.topCenter,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Material(
                 elevation: 4.0,
                 child: SizedBox(
                   height: 200.0,
                   child: ListView.builder(
                     padding: const EdgeInsets.all(8.0),
                     itemCount: options.length,
                     itemBuilder: (context, index) {
                       final String option = options.elementAt(index);
                       // print(option);
                       return GestureDetector(
                         onTap: () {
                           onSelected(option);
                         },
                         child: ListTile(
                           title: Text(option),
                         ),
                       );
                     },
                   ),
                 ),
               ),
             ),
           );
         },
       ),
     );
   }
 }

''';
