import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets198_TextFormField.dart';

class FlutterTextFormFieldFlutterAllWidgets extends StatefulWidget {
  const FlutterTextFormFieldFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTextFormFieldFlutterAllWidgets> createState() =>
      _FlutterTextFormFieldFlutterAllWidgetsState();
}

class _FlutterTextFormFieldFlutterAllWidgetsState
    extends State<FlutterTextFormFieldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 198,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TextFormField Widget'),
          const H3('Click to View Live'),
          const Live(page: TextFormFieldWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TextFormFieldWidget extends StatefulWidget {
   const TextFormFieldWidget({super.key});
 
   @override
   State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
 }
 
 class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
   List<String> titles = [
     '',
     '',
     '',
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TextFormField Widget"),
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: Form(
           autovalidateMode: AutovalidateMode.always,
           onChanged: () {
             setState(() {
               Form.of(primaryFocus!.context!).save();
             });
           },
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: List.generate(
               3,
               (index) {
                 return Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       TextFormField(
                         onSaved: (String? value) {
                           if (value != null) {
                             titles[index] = value;
                           }
                         },
                       ),
                       const SizedBox(height: 10),
                       Card(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(titles[index]),
                         ),
                       )
                     ],
                   ),
                 );
               },
             ),
           ),
         ),
       ),
     );
   }
 }

''';
