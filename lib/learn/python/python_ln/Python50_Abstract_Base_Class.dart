import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Abstract_Base_Class extends StatefulWidget {
  const Abstract_Base_Class({Key? key}) : super(key: key);

  @override
  State<Abstract_Base_Class> createState() => _Abstract_Base_ClassState();
}

class _Abstract_Base_ClassState extends State<Abstract_Base_Class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 50,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Abstract Base Class'),
          const P(
              'An Abstract Base Class (ABC) in Python is a special type of class that provides an interface to define the expected behaviors of its subclasses, but cannot be instantiated on its own.'),
          const P(
              'An ABC is created using the abc module, which is part of the Python Standard Library. To create an ABC, a class is derived from ABC and one or more abstract methods are declared using the @abstractmethod decorator. Subclasses of an ABC must override these abstract methods, or they too will be treated as abstract and cannot be instantiated.'),
          const P(
              'ABCs are used to define a common interface for related classes, so that it is easier to write generic code that works with objects of different types, as long as they adhere to the expected interface. This can help enforce modularity and reduce code duplication, and make it easier to maintain code and add new features.'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const Note(
              'In Simple, set of rules to create ,then this rules are follow or implementation all other class'),
          const Link(
              'https://www.geeksforgeeks.org/abstract-classes-in-python/'),
        ],
      ),
    );
  }
}

var code2 = '''
We can Provide 7.5% Interest Loan
HDFC Provide Credit
HDFC Provide Debit
HDFC Provide Credit Card
''';
var code1 = '''
from abc import ABC, abstractmethod


# this is Abstract Base Class
# Only functions are here , there is no definition
class Bank(ABC):
    @abstractmethod
    def loan(self): # this is abstractmethod
        pass

    @abstractmethod
    def credit(self):
        pass

    @abstractmethod
    def debit(self):
        pass


class HDFC(Bank):
    def loan(self):
        print("We can Provide 7.5% Interest Loan")

    def credit(self):
        print("HDFC Provide Credit")

    def debit(self):
        print("HDFC Provide Debit")

    def card(self):
        print("HDFC Provide Credit Card")


o = HDFC()
o.loan()
o.credit()
o.debit()
o.card()
''';
