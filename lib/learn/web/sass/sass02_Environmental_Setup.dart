import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassEnvironmentalSetupAndInstall extends StatefulWidget {
  const SassEnvironmentalSetupAndInstall({Key? key}) : super(key: key);

  @override
  State<SassEnvironmentalSetupAndInstall> createState() =>
      _SassEnvironmentalSetupAndInstallState();
}

class _SassEnvironmentalSetupAndInstallState
    extends State<SassEnvironmentalSetupAndInstall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Environmental Setup in SASS'),
          H3('What tools do we need ?'),
          Li('Laptop or Any Computer'),
          Li('VS Code Editor'),
          Li('SASS Compiler'),
          P('      Live Sass Compiler or Node-sass'),
          P('      Live Server'),
          H3('How to Compile in Easy Way'),
          Note('Using VS Code Extension'),
          Li('Step 1: Install Live Sass Compiler'),
          Li('Step 2: Set the Save Location'),
          Li('Step 3: Compile Sass'),
          Li('Step 4: Link the CSS file'),
          Link(
              'https://www.freecodecamp.org/news/the-beginners-guide-to-sass/'),
        ],
      ),
    );
  }
}
