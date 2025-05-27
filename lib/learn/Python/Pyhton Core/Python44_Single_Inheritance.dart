import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Single_Inheritance extends StatefulWidget {
  const Single_Inheritance({Key? key}) : super(key: key);

  @override
  State<Single_Inheritance> createState() => _Single_InheritanceState();
}

class _Single_InheritanceState extends State<Single_Inheritance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 44,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Single Inheritance'),
          const P(
              'Single Inheritance in Python refers to a situation where a derived class inherits from a single base class. The derived class inherits all the attributes and methods of the base class and can also have additional attributes and methods of its own. This is the simplest form of inheritance, where a child class inherits from one parent class. The child class can access all the public and protected methods and attributes of the parent class.'),
          const Img(name: 'SingleInheritance1.png', height: 300),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
        ],
      ),
    );
  }
}

var code2 = '''
Name     :  Nokia 1100
Year     :  1998
Company  :  Nokia India
Website  :  www.nokia-india.com
Address : Cherry Road,Near Bus Stand ,Salem
''';
var code1 = '''
class Nokia:
    company = "Nokia India"
    webiste = "www.nokia-india.com"
 
    def contact_details(self):
        print("Address : Cherry Road,Near Bus Stand ,Salem")
 
 
class Nokia1100(Nokia):
    def __init__(self):
        self.name = "Nokia 1100"
        self.year = 1998
 
    def product_details(self):
        print("Name     : ", self.name)
        print("Year     : ", self.year)
        print("Company  : ", self.company)
        print("Website  : ", self.webiste)
 
 
mobile = Nokia1100()
mobile.product_details()
mobile.contact_details()
''';
