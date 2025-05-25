import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/web/sass/sass01_Intro.dart';
import 'package:learn_smart/learn/web/sass/sass02_Environmental_Setup.dart';
import 'package:learn_smart/learn/web/sass/sass03_comments.dart';
import 'package:learn_smart/learn/web/sass/sass04_variables.dart';
import 'package:learn_smart/learn/web/sass/sass05_Datatypes.dart';
import 'package:learn_smart/learn/web/sass/sass06_nesting_rules.dart';
import 'package:learn_smart/learn/web/sass/sass07_Interpolation.dart';
import 'package:learn_smart/learn/web/sass/sass08_Import_and_partials.dart';
import 'package:learn_smart/learn/web/sass/sass09_mixins_and_include.dart';
import 'package:learn_smart/learn/web/sass/sass10_Functions.dart';
import 'package:learn_smart/learn/web/sass/sass11_extend.dart';
import 'package:learn_smart/learn/web/sass/sass12_ErrorHandling.dart';
import 'package:learn_smart/learn/web/sass/sass13_BuildinModules.dart';
import 'package:learn_smart/learn/web/sass/sass14_Operators.dart';
import 'package:learn_smart/learn/web/sass/sass15_conditionalStatement.dart';
import 'package:learn_smart/learn/web/sass/sass16_Looping_Statement.dart';

List<Topics> sassTopics = [
  Topics('intro', const SassIntro(), 'sass'),
  Topics(
      'Environmental Setup', const SassEnvironmentalSetupAndInstall(), 'sass'),
  Topics('Comments', const SassComments(), 'sass'),
  Topics('Variables', const SassVariables(), 'sass'),
  Topics('Datatype', const SassDatatype(), 'sass'),
  Topics('Nesting Style', const SassNestingStyle(), 'sass'),
  Topics('Interpolation', const SassInterpolation(), 'sass'),
  Topics('Import and Partials', const SassImportAndPartials(), 'sass'),
  Topics('Mixins and Include', const SassMixinsAndInclude(), 'sass'),
  Topics('Functions', const SassFunctions(), 'sass'),
  Topics('Extend', const SassExtend(), 'sass'),
  Topics('Error Handling', const SassErrorHandling(), 'sass'),
  Topics('Build In Modules', const SassBuildInModules(), 'sass'),
  Topics('Operators', const SassOperators(), 'sass'),
  Topics('Conditional Statement', const SassConditionalStatement(), 'sass'),
  Topics('Looping Statement', const SassLoopingStatement(), 'sass'),
];
