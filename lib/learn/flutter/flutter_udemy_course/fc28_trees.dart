import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCTrees extends StatefulWidget {
  const FCTrees({Key? key}) : super(key: key);

  @override
  State<FCTrees> createState() => _FCTreesState();
}

class _FCTreesState extends State<FCTrees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Three trees'),
          //143
          H3('Widget & Element trees'),
          Img(name: 'wid_ele_trees.png'),
          P('Flutter creates these extra element object in memory to be able to efficiently determine require UI updates')
        ],
      ),
    );
  }
}
