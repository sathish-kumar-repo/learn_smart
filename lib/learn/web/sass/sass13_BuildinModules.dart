import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassBuildInModules extends StatefulWidget {
  const SassBuildInModules({Key? key}) : super(key: key);

  @override
  State<SassBuildInModules> createState() => _SassBuildInModulesState();
}

class _SassBuildInModulesState extends State<SassBuildInModules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 13,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: const MyPage(
        children: [
          H1('BuildIn Modules '),
          Link('https://sass-lang.com/documentation/modules/'),
        ],
      ),
    );
  }
}

var code = '''''';
var code2 = '''''';
var code1 = '''''';
