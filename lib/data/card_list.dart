import 'package:learn_smart/learn/Flutter/Udemy Course/fc01_intro.dart';
import 'package:learn_smart/learn/Python/Python%20Program/pp1_Python_Pattern_Program.dart';
import 'package:learn_smart/learn/GitHub/ggb01_basic.dart';
import 'package:learn_smart/modal/course_modal.dart';
import 'package:learn_smart/learn/english/e1_self_introduction.dart';
import 'package:learn_smart/learn/CPP%20Program/cpp1_ifStatement.dart';
import 'package:learn_smart/learn/web/CSS Animation/project1.dart';
import 'package:learn_smart/learn/web/Mongo Db/mb01_intro.dart';
import 'package:learn_smart/learn/Python/Py%20Module/pym01_Random.dart';
import 'package:learn_smart/learn/web/SASS/sass01_Intro.dart';
import 'package:learn_smart/learn/web/React/r01_intro.dart';
import 'package:learn_smart/learn/web/JS/01_Basic_Program_in_JS.dart';
import 'package:learn_smart/learn/web/CSS/01_Selectors.dart';
import 'package:learn_smart/learn/web/HTML/01_Basic_Layout.dart';
import 'package:learn_smart/learn/Flutter/Animation/fa01_pageviewAnimation.dart';
import 'package:learn_smart/learn/Flutter/Concepts/fc01_FetchAPI.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/Python01_Python_Introduction.dart';
import 'package:learn_smart/learn/Flutter/Dart/dart_core0_Course_Overview.dart';
import 'package:learn_smart/learn/CPP/cpp1_Intro.dart';

Map<String, List<Course>> cardData = {
  'Flutter': [
    Course(
      course: 'Dart',
      img: 'dart.png',
      route: '/dart',
      page: () => DartCourseOverview(),
    ),
    Course(
      course: 'Animation',
      img: 'flutterAnimation.jpg',
      route: '/animation',
      page: () => const PageViewAnimationInFlutter(),
    ),
    Course(
      course: 'Concepts',
      img: 'flutterConcepts.jpg',
      route: '/flutter-concepts',
      page: () => const FlutterConceptApiFetch(),
    ),
    Course(
      course: 'Flutter Udemy',
      img: 'f-udemy-course.jpeg',
      route: '/flutter-udemy',
      page: () => const FCIntro(),
    ),
  ],
  'English': [
    Course(
      course: 'Learn English',
      img: 'english.jpg',
      route: '/english',
      page: () => const SelfIntroduction(),
    ),
  ],
  'Version Control': [
    Course(
      course: 'Git and GitHub',
      img: 'git_outer.png',
      route: '/git-github',
      page: () => GitAndGitHubBasic(),
    ),
  ],
  'Web': [
    Course(
      course: 'HTML',
      img: 'html.png',
      route: '/html',
      page: () => const BasicLayoutHTMl(),
    ),
    Course(
      course: 'CSS',
      img: 'css.png',
      route: '/css',
      page: () => const SelectorsInCss(),
    ),
    Course(
      course: 'CSS mini project',
      img: 'cssproject.jpg',
      route: '/css-project',
      page: () => const Project1(),
    ),
    Course(
      course: 'SASS',
      img: 'sassO.png',
      route: '/sass',
      page: () => const SassIntro(),
    ),
    Course(
      course: 'JS',
      img: 'js.png',
      route: '/js',
      page: () => const Basic_Program_in_JS(),
    ),
    Course(
      course: 'React',
      img: 'React Native.png',
      route: '/react',
      page: () => const ReactIntro(),
    ),
    Course(
      course: 'MongoDB',
      img: 'mongoDB.png',
      route: '/mongodb',
      page: () => const MongoDBIntro(),
    ),
  ],
  'C++': [
    Course(
      course: 'C++',
      img: 'cpp.png',
      route: '/cpp',
      page: () => const CPP_Intro(),
    ),
    Course(
      course: 'C++ Basic Program',
      img: 'cpp.png',
      route: '/cpp-basic-program',
      page: () => const ifStatementProgram(),
    ),
  ],
  'Python': [
    Course(
      course: 'Python',
      img: 'Python.png',
      route: '/python',
      page: () => const Python_Introduction(),
    ),
    Course(
      course: 'Python Basic Program',
      img: 'Python.png',
      route: '/python-basic-program',
      page: () => const PyPattern(),
    ),
    Course(
      course: 'Python Module',
      img: 'py.jpg',
      route: '/python-module',
      page: () => const RandomPy(),
    ),
  ],
};
