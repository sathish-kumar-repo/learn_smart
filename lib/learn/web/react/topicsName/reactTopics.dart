import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/web/React/r01_intro.dart';
import 'package:learn_smart/learn/web/React/r02_install.dart';
import 'package:learn_smart/learn/web/React/r03_jsx.dart';
import 'package:learn_smart/learn/web/React/r04_Create_component.dart';

List<Topics> reactjsTopics = [
  Topics('Intro', const ReactIntro(), 'React'),
  Topics('Install', const ReactInstall(), 'React'),
  Topics('JSX', const ReactJSX(), 'React'),
  Topics('Create Components', const ReactCreateComponents(), 'React'),
];
