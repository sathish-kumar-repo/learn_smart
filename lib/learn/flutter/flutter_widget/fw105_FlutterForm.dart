import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets105_Form.dart';

class FlutterFlutterFormFlutterAllWidgets extends StatefulWidget {
  const FlutterFlutterFormFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFlutterFormFlutterAllWidgets> createState() =>
      _FlutterFlutterFormFlutterAllWidgetsState();
}

class _FlutterFlutterFormFlutterAllWidgetsState
    extends State<FlutterFlutterFormFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 105,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FlutterForm Widget'),
          const H3('Click to View Live'),
          const Live(page: FormWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 final _formKey = GlobalKey<FormState>();
 
 class FlutterFormWidget extends StatefulWidget {
   const FlutterFormWidget({super.key});
 
   @override
   State<FlutterFormWidget> createState() => _FlutterFormWidgetState();
 }
 
 class _FlutterFormWidgetState extends State<FlutterFormWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FlutterForm Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Form(
           key: _formKey,
           child: Column(
             children: [
               TextFormField(
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Enter Something';
                   }
                   return null;
                 },
               ),
               TextFormField(
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Enter Something';
                   }
                   return null;
                 },
               ),
               ElevatedButton(
                 onPressed: () {
                   if (_formKey.currentState!.validate()) {
                     // it trigger very form field validator
                     ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                         content: Text('Great'),
                       ),
                     );
                   }
                 },
                 child: const Text('Validate'),
               )
             ],
           ),
         ),
       ),
     );
   }
 }

''';
