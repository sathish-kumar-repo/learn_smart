import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/python/flask/topicName/flaskTopic.dart';

class FlaskIntro extends StatefulWidget {
  const FlaskIntro({Key? key}) : super(key: key);

  @override
  State<FlaskIntro> createState() => _PasteState();
}

class _PasteState extends State<FlaskIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: flaskTopics,
        img: 'flask.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Introduction'),
          Li('Flask is web framework'),
          Li('it ia developerd by Armin Ronacher'),
          Li('Flask is considered as amicro framework'),
          Li('It is based on WSGI toolkit and jinja2 template engine'),
          Li('WSGI - (Web Sever Gateway Interface)'),
          H3('Source Code')
        ],
      ),
    );
  }
}
