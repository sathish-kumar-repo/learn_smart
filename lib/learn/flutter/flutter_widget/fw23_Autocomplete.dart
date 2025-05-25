import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets23_Autocomplete.dart';

class FlutterAutocompleteFlutterAllWidgets extends StatefulWidget {
  const FlutterAutocompleteFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAutocompleteFlutterAllWidgets> createState() =>
      _FlutterAutocompleteFlutterAllWidgetsState();
}

class _FlutterAutocompleteFlutterAllWidgetsState
    extends State<FlutterAutocompleteFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 23,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Autocomplete Widget'),
          const H3('Click to View Live'),
          const Live(page: AutocompleteWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AutocompleteWidget extends StatefulWidget {
   const AutocompleteWidget({super.key});
 
   @override
   State<AutocompleteWidget> createState() => _AutocompleteWidgetState();
 }
 
 class _AutocompleteWidgetState extends State<AutocompleteWidget> {
   static const List<String> listItems = [
     'apple',
     'banana',
     'melon',
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Autocomplete Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Autocomplete<String>(
           optionsBuilder: (TextEditingValue textEditingValue) {
             if (textEditingValue.text == '') {
               return const Iterable<String>.empty();
               //  return the empty list to iterable string
             }
             return listItems.where((String item) {
               return item.contains(textEditingValue.text.toLowerCase());
             });
           },
           onSelected: (String item) {
             debugPrint("Use select this Item: \$item");
           },
         ),
       ),
     );
   }
 }
 // How would you do it, if you wanted suggestions only for first few characters and not characters which are also in the middle of a word?
 // use .startsWith instead of .contains

''';
