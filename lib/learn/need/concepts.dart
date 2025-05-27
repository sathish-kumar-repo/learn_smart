import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/CPP%20Program/topicName/cpp_program_Topics.dart';

class Paste extends StatefulWidget {
  const Paste({Key? key}) : super(key: key);

  @override
  State<Paste> createState() => _PasteState();
}

class _PasteState extends State<Paste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: cPPProgramTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('type'),
        ],
      ),
    );
  }
}
