import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class LayoutDesignProperty extends StatefulWidget {
  const LayoutDesignProperty({Key? key}) : super(key: key);

  @override
  State<LayoutDesignProperty> createState() => _LayoutDesignPropertyState();
}

class _LayoutDesignPropertyState extends State<LayoutDesignProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 21,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('CSS Layout Design'),
          Li('Box Model in CSS'),
          Img(name: 'box_model.png'),
          Li('Normal Document Flow'),
          Li('Display Properties'),
          Li('Float properties'),
          Li('Position'),
          P('      1. Static'),
          P('      2. Relative'),
          P('      3. Absolute'),
          P('      4. Fixed'),
          P('      5. Sticky'),
        ],
      ),
    );
  }
}
