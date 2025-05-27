import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/Python/Py%20Module/pym01_Random.dart';
import 'package:learn_smart/learn/Python/Py%20Module/pym02_OS.dart';
import 'package:learn_smart/learn/Python/Py%20Module/pym03_pickle.dart';

List<Topics> pyModule = [
  Topics('Random', const RandomPy(), 'py'),
  Topics('OS', const OSPy(), 'py'),
  Topics('Pickle', const PicklePy(), 'py'),
];
