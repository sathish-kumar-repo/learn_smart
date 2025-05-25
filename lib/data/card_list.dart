import 'package:learn_smart/learn/flutter/flutter_udemy_course/fc01_intro.dart';
import 'package:learn_smart/learn/python/python_program/pp1_Python_Pattern_Program.dart';
import 'package:learn_smart/learn/version_control/Git_and_GitHub_Beginner/ggb01_basic.dart';
import 'package:learn_smart/modal/course_modal.dart';
import 'package:learn_smart/learn/english/e1_self_introduction.dart';
import 'package:learn_smart/learn/basic/Course10_CPP_Program/cpp1_ifStatement.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/project1.dart';
import 'package:learn_smart/learn/web/mongo_db/mb01_intro.dart';
import 'package:learn_smart/learn/python/py_module/pym01_Random.dart';
import 'package:learn_smart/learn/web/sass/sass01_Intro.dart';
import 'package:learn_smart/learn/web/react/r01_intro.dart';
import 'package:learn_smart/learn/web/js/01_Basic_Program_in_JS.dart';
import 'package:learn_smart/learn/web/css/01_Selectors.dart';
import 'package:learn_smart/learn/web/html/01_Basic_Layout.dart';
import 'package:learn_smart/learn/flutter/animation/fa01_pageviewAnimation.dart';
import 'package:learn_smart/learn/flutter/flutter_concepts/fc01_FetchAPI.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/fw1_AboutDialog.dart';
import 'package:learn_smart/learn/python/python_ln/Python01_Python_Introduction.dart';
import 'package:learn_smart/learn/flutter/dart_core/dart_core0_Course_Overview.dart';
import 'package:learn_smart/learn/basic/Course9_CPP/cpp1_Intro.dart';

Map<String, List<Course>> cardData = {
  'Flutter': [
    Course(
      course: 'Dart Programming',
      img: 'dart.png',
      page: DartCourseOverview(),
    ),
    Course(
      course: 'Widgets',
      img: 'Flutter.png',
      page: const FlutterAboutDialogFlutterAllWidgets(),
    ),
    Course(
      course: 'Animation',
      img: 'flutterAnimation.jpg',
      page: const PageViewAnimationInFlutter(),
    ),
    Course(
      course: 'Concepts',
      img: 'flutterConcepts.jpg',
      page: const FlutterConceptApiFetch(),
    ),
    Course(
      course: 'Flutter Udemy',
      img: 'f-udemy-course.jpeg',
      page: const FCIntro(),
    ),
  ],
  'English': [
    Course(
      course: 'Learn English',
      img: 'english.jpg',
      page: const SelfIntroduction(),
    ),
  ],
  'Version Control': [
    Course(
      course: 'Git and GitHub',
      img: 'git_outer.png',
      page: GitAndGitHubBasic(),
    ),
  ],
  'Web': [
    Course(
      course: 'HTML',
      img: 'html.png',
      page: const BasicLayoutHTMl(),
    ),
    Course(
      course: 'CSS',
      img: 'css.png',
      page: const SelectorsInCss(),
    ),
    Course(
      course: 'CSS mini project',
      img: 'cssproject.jpg',
      page: const Project1(),
    ),
    // Course(
    //   course: 'Bootstrap',
    //   img: 'bootstrap.png',
    //   page: const IntroBS(),
    //   des:
    //       'Harness the power of Bootstrap to build responsive, mobile-first web pages effortlessly.',
    // ),
    Course(
      course: 'SASS',
      img: 'sassO.png',
      page: const SassIntro(),
    ),
    Course(
      course: 'JS',
      img: 'js.png',
      page: const Basic_Program_in_JS(),
    ),

    Course(
      course: 'React',
      img: 'React Native.png',
      page: const ReactIntro(),
    ),
    Course(
      course: 'MongoDB',
      img: 'mongoDB.png',
      page: const MongoDBIntro(),
    ),
  ],
  'C': [
    Course(
      course: 'C',
      img: 'c.png',
      page: const BasicLayoutHTMl(),
    ),
    Course(
      course: 'C BasicProgram',
      img: 'c.png',
      page: const BasicLayoutHTMl(),
    ),
  ],
  'C++': [
    Course(
      course: 'C++',
      img: 'cpp.png',
      page: const CPP_Intro(),
    ),
    Course(
      course: 'C++ Basic Program',
      img: 'cpp.png',
      page: const ifStatementProgram(),
    ),
  ],
  'Python': [
    Course(
      course: 'Python',
      img: 'Python.png',
      page: const Python_Introduction(),
    ),
    Course(
      course: 'Python Basic Program',
      img: 'Python.png',
      page: const PyPattern(),
    ),
    Course(
      course: 'Python Module',
      img: 'py.jpg',
      page: const RandomPy(),
    ),
  ],
};
