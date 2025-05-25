import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/react/topicsName/reactTopics.dart';

class ReactIntro extends StatefulWidget {
  const ReactIntro({Key? key}) : super(key: key);

  @override
  State<ReactIntro> createState() => _ReactIntroState();
}

class _ReactIntroState extends State<ReactIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: const MyPage(
        children: [
          H1('React JS'),
          H3('What is React JS ?'),
          Li('React JS is a JavaScript Library front end application or user interface (UI).'),
          Li('React JS allows us to create reusable UI Components.'),
          Li('Components are the building blocks of any React app.'),
          Li('It is created by FaceBook'),
          H3('Advantage of React JS?'),
          Li('Reusable Components'),
          Li('Open source'),
          Li('Fast and Efficient'),
          Li('Work in Browser'),
          Li('Large Community'),
        ],
      ),
    );
  }
}
