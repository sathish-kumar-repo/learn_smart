import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartDartSetup extends StatefulWidget {
  const DartDartSetup({Key? key}) : super(key: key);

  @override
  State<DartDartSetup> createState() => _DartDartSetupState();
}

class _DartDartSetupState extends State<DartDartSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('Dart Setup'),
          H3('intellij IDEA'),
          Li('install Dart SDK'),
          Li('Install Intellij IDEA'),
          Li('Integrate Dart Plugin'),
          H3('DartPad'),
          Li('No-download or setup needed'),
          Li('Go online and write code'),
        ],
      ),
    );
  }
}
