import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/python/python_program/pp1_Python_Pattern_Program.dart';
import 'package:learn_smart/learn/python/python_program/pp2_List_comprehension.dart';
import 'package:learn_smart/learn/python/python_program/pp3_Datetime.dart';

List<Topics> pythonProgramTopics = [
  Topics('Pattern Program', const PyPattern(), 'py'),
  Topics('List Comprehension', const PyListComprehension(), 'py'),
  Topics('Datetime - Exercises', const PyDateTime(), 'py'),
];
