import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/python/python_ln/Python01_Python_Introduction.dart';
import 'package:learn_smart/learn/python/python_ln/Python02_Keywords.dart';
import 'package:learn_smart/learn/python/python_ln/Python03_Variables.dart';
import 'package:learn_smart/learn/python/python_ln/Python04_Input_Function.dart';
import 'package:learn_smart/learn/python/python_ln/Python52_Sqlite3.dart';
import 'package:learn_smart/learn/python/python_ln/Python05_Single_and_Multiline_Commend.dart';
import 'package:learn_smart/learn/python/python_ln/Python06_Type_Casting.dart';
import 'package:learn_smart/learn/python/python_ln/Python07_String_Manipulation.dart';
import 'package:learn_smart/learn/python/python_ln/Python08_Arithmetic_Operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python09_Assignment_Operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python10_Comparison_Operators_or_Relational_Operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python11_Logical_Operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python12_Bitwise_Operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python13_Identity_Operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python14_Membership_operators.dart';
import 'package:learn_smart/learn/python/python_ln/Python15_IF_Statement.dart';
import 'package:learn_smart/learn/python/python_ln/Python16_IF_-_Else_Statement.dart';
import 'package:learn_smart/learn/python/python_ln/Python17_Elif_Statement.dart';
import 'package:learn_smart/learn/python/python_ln/Python18_Nested_If_Statement.dart';
import 'package:learn_smart/learn/python/python_ln/Python19_While_Loop.dart';
import 'package:learn_smart/learn/python/python_ln/Python20_Continue_using_While_Loop.dart';
import 'package:learn_smart/learn/python/python_ln/Python21_Break_using_While_Loop.dart';
import 'package:learn_smart/learn/python/python_ln/Python22_Range_in_Python.dart';
import 'package:learn_smart/learn/python/python_ln/Python23_For_Loop.dart';
import 'package:learn_smart/learn/python/python_ln/Python24_Nested_For_Loop.dart';
import 'package:learn_smart/learn/python/python_ln/Python25_While_Else_and_For_Else.dart';
import 'package:learn_smart/learn/python/python_ln/Python26_List.dart';
import 'package:learn_smart/learn/python/python_ln/Python27_Tuple.dart';
import 'package:learn_smart/learn/python/python_ln/Python28_Set.dart';
import 'package:learn_smart/learn/python/python_ln/Python29_Dictionary.dart';
import 'package:learn_smart/learn/python/python_ln/Python30_Functions_and_Types.dart';
import 'package:learn_smart/learn/python/python_ln/Python31_Try_Block.dart';
import 'package:learn_smart/learn/python/python_ln/Python32_Class_and_Object.dart';
import 'package:learn_smart/learn/python/python_ln/Python33_Class_Attributes.dart';
import 'package:learn_smart/learn/python/python_ln/Python34_Instance_Attributes.dart';
import 'package:learn_smart/learn/python/python_ln/Python35_Class_Method.dart';
import 'package:learn_smart/learn/python/python_ln/Python36_Instance_Method.dart';
import 'package:learn_smart/learn/python/python_ln/Python37_Init_Method.dart';
import 'package:learn_smart/learn/python/python_ln/Python38_Property_Decorator.dart';
import 'package:learn_smart/learn/python/python_ln/Python39_Property_Decorator_Getter_Setter.dart';
import 'package:learn_smart/learn/python/python_ln/Python40_Property_Method.dart';
import 'package:learn_smart/learn/python/python_ln/Python41_Class_Method_Decorator.dart';
import 'package:learn_smart/learn/python/python_ln/Python42_Static_Method.dart';
import 'package:learn_smart/learn/python/python_ln/Python43_Abstraction_and_Encapsulation.dart';
import 'package:learn_smart/learn/python/python_ln/Python44_Single_Inheritance.dart';
import 'package:learn_smart/learn/python/python_ln/Python45_Multiple_Inheritance.dart';
import 'package:learn_smart/learn/python/python_ln/Python46_Multilevel_Inheritance.dart';
import 'package:learn_smart/learn/python/python_ln/Python47_Function_Overriding.dart';
import 'package:learn_smart/learn/python/python_ln/Python48_Handling_Diamond_Problem_in_Python.dart';
import 'package:learn_smart/learn/python/python_ln/Python49_Operator_Overloading.dart';
import 'package:learn_smart/learn/python/python_ln/Python50_Abstract_Base_Class.dart';
import 'package:learn_smart/learn/python/python_ln/Python51_Open_a_File.dart';

List<Topics> pythonTopics = [
  Topics('Python Introduction', const Python_Introduction(), 'Introduction'),
  Topics('Keywords', const Keywords(), 'Basic'),
  Topics('Variables', const Variables(), 'Basic'),
  Topics(
      'Input Function', const Input_Function(), 'How to get input from user'),
  Topics('Single and Multiline Commend', const Single_and_Multiline_Commend(),
      'Commend'),
  Topics('Type Casting', const Type_Casting(), 'DataType'),
  Topics('String, String Functions and String Manipulation',
      const String_Manipulation(), 'String'),
  Topics(
      'Arithmetic Operators', const Arithmetic_Operators(), 'Python Operator'),
  Topics(
      'Assignment Operators', const Assignment_Operators(), 'Python Operator'),
  Topics('Comparison Operators or Relational Operators',
      const Comparison_Operators_or_Relational_Operators(), 'Python Operator'),
  Topics('Logical Operators', const Logical_Operators(), 'Python Operator'),
  Topics('Bitwise Operators', const Bitwise_Operators(), 'Python Operator'),
  Topics('Identity Operators', const Identity_Operators(), 'Python Operator'),
  Topics(
      'Membership operators', const Membership_operators(), 'Python Operator'),
  Topics('IF Statement', const IF_Statement(), 'Conditional Statement'),
  Topics('IF - Else Statement', const IF__Else_Statement(),
      'Conditional Statement'),
  Topics('Elif Statement', const Elif_Statement(), 'Conditional Statement'),
  Topics('Nested If Statement', const Nested_If_Statement(),
      'Conditional Statement'),
  Topics('While Loop', const While_Loop(), 'Looping Statement'),
  Topics('Continue using While Loop', const Continue_using_While_Loop(),
      'Looping Statement'),
  Topics('Break using While Loop', const Break_using_While_Loop(),
      'Looping Statement'),
  Topics('Range in Python', const Range_in_Python(), 'Looping Statement'),
  Topics('For Loop', const For_Loop(), 'Looping Statement'),
  Topics('Nested For Loop', const Nested_For_Loop(), 'Looping Statement'),
  Topics('While Else and For Else', const While_Else_and_For_Else(),
      'Looping Statement'),
  Topics('List', const ListPython(), 'Collections'),
  Topics('Tuple', const TuplePython(), 'Collections'),
  Topics('Set', const SetPython(), 'Collections'),
  Topics('Dictionary', const DictionaryPython(), 'Collections'),
  Topics(
      'Functions and Types', const Functions_and_Types(), 'Function Concepts'),
  Topics('Try Block', const Try_Block(), 'TryBlock'),
  Topics('Class and Object', const Class_and_Object(), 'OOPs'),
  Topics('Class Attributes', const Class_Attributes(), 'OOPs'),
  Topics('Instance Attributes', const Instance_Attributes(), 'OOPs'),
  Topics('Class Method', const Class_Method(), 'OOPs'),
  Topics('Instance Method', const Instance_Method(), 'OOPs'),
  Topics('Init Method', const Init_Method(), 'OOPs'),
  Topics('Property Decorator', const Property_Decorator(), 'OOPs'),
  Topics('Property Decorator Getter Setter',
      const Property_Decorator_Getter_Setter(), 'OOPs'),
  Topics('Property Method', const Property_Method(), 'OOPs'),
  Topics('Class Method Decorator', const Class_Method_Decorator(), 'OOPs'),
  Topics('Static Method', const Static_Method(), 'OOPs'),
  Topics('Abstraction and Encapsulation', const Abstraction_and_Encapsulation(),
      'OOPs'),
  Topics('Single Inheritance', const Single_Inheritance(), 'OOPs'),
  Topics('Multiple Inheritance', const Multiple_Inheritance(), 'OOPs'),
  Topics('Multilevel Inheritance', const Multilevel_Inheritance(), 'OOPs'),
  Topics('Function Overriding', const Function_Overriding(), 'OOPs'),
  Topics('Handling Diamond Problem in Python',
      const Handling_Diamond_Problem_in_Python(), 'OOPs'),
  Topics('Operator Overloading', const Operator_Overloading(), 'OOPs'),
  Topics('Abstract Base Class', const Abstract_Base_Class(), 'OOPs'),
  Topics('File Handling', const Open_a_File(), 'Handling File'),
  Topics('SQLite Database Database Connectivity', const SQLitePython(), 'DB'),
];
