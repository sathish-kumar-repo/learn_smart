import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartObjectOrientedDart extends StatefulWidget {
  const DartObjectOrientedDart({Key? key}) : super(key: key);

  @override
  State<DartObjectOrientedDart> createState() => _DartObjectOrientedDartState();
}

class _DartObjectOrientedDartState extends State<DartObjectOrientedDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('Object Oriented Dart'),
          Img(name: 'class_dart.jpg', height: 300)
        ],
      ),
    );
  }
}
