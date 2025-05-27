import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/CPP/cpp1_Intro.dart';
import 'package:learn_smart/learn/CPP/cpp2_namespace.dart';
import 'package:learn_smart/learn/CPP/cpp3_GettingInput.dart';
import 'package:learn_smart/learn/CPP/cpp4_SstringExplore.dart';
import 'package:learn_smart/learn/CPP/cpp5_ConditionalStatement.dart';

List<Topics> cPPTopics = [
  Topics('C++ Intro', const CPP_Intro(), ''),
  Topics('Why we using namespace std', const CPP_namespace(), ''),
  Topics('Getting Inputs in C++', const CPPInputGetting(), ''),
  Topics('std::string class in C++', const CPP_String(), ''),
  Topics('Conditional Statements', const CPP_ConditionalStatement(), ''),
  Topics('', const CPPInputGetting(), ''),
];
