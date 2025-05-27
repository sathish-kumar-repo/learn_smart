import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartCourseOverview extends StatefulWidget {
  const DartCourseOverview({Key? key}) : super(key: key);

  @override
  State<DartCourseOverview> createState() => _DartCourseOverviewState();
}

class _DartCourseOverviewState extends State<DartCourseOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Course Overview'),
          P(para),
        ],
      ),
    );
  }
}

var para = '''
0. Overview
   - Course introduction, prequisites and software required
1. Installation
   - Install required softwares for Windows, MAC and Linux ( Ubuntu )
2. Getting Started with Dart Programming
   - Run your first app in Dart
   - Comments
3. Exploring Data Types and Variables
   - Data Types and Variables
   - String, Literals and String Interpolation
   - Define constants using "final" and "const" keywords
4. Control Flow Statements
   - IF ELSE
   - Conditional Expressions
   - Ternary Operator
5. Loop Control Statements
   - What are Iterators?
   - FOR Loop and how it works
   - WHILE Loop
   - DO WHILE Loop
   - BREAK statements
   - CONTINUE keyword
   - Labelled FOR Loop
6. Exploring Functions or Methods
   - Declaring functions
   - Function Expressions: Short hand syntax or using FAT ARROR
   - Optional Positional Parameters
   - Optional Named Parameters
   - Optional Default Parameters
7. Exception Handling
   - Demo with example
   - Custom Exception Class
8. Object Oriented Programming: Getting Started
   - Defining Class and creating Objects
   - Instance and field variables
   - Constructors
     - Default
     - Named
     - Parameterized
9. More on Object Oriented Dart
   - Inheritance
   - Getter and Setter
   - Private Instance Variable
   - Polymorphism
   - Using constructors in Inheritance
   - Static variables and methods
10. Functional Programming in Dart
    - Lambda Expression
    - Higher-Order Functions
    - Lexical Closures
11. Dart Collections
    - Arrays or List
      - Fixed Length List
      - Growable List
    - Set and HashSet
    - Map and HashMap
12. Callable Classes
13. Conclusion
''';
