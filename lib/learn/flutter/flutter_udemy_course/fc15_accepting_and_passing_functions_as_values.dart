import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCAcceptingAndPassingFunctionsAsValues extends StatefulWidget {
  const FCAcceptingAndPassingFunctionsAsValues({Key? key}) : super(key: key);

  @override
  State<FCAcceptingAndPassingFunctionsAsValues> createState() =>
      _FCAcceptingAndPassingFunctionsAsValuesState();
}

class _FCAcceptingAndPassingFunctionsAsValuesState
    extends State<FCAcceptingAndPassingFunctionsAsValues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Accepting and Passing Functions as Values'),
          Code(title: 'quiz.dart', code: code1, type: 'dart'),
          Code(title: 'start_screen.dart', code: code2, type: 'dart'),
          Code(title: 'questions_screen.dart', code: code3, type: 'dart'),
        ],
      ),
    );
  }
}

var code3 = '''
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('Question screen');
  }
}
''';
var code2 = '''
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

// lifiting state up
  final void Function() startQuiz;
// const in front of the constructor function: 'Unlocks' the usage of const when instanting the class
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Not use this method because this is quite performance intesive
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
''';
var code1 = '''
import 'package:adv_basics_2/questions_screen.dart';
import 'package:adv_basics_2/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    // will be execued first by flutter
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QusetionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // const used at class instantiation .Allows Dart to reuse the object
          child: activeScreen,
          // rendering content conditionally
        ),
      ),
    );
  }
}
''';
