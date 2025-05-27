import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/CPP/topicName/cppTopic.dart';

class CPP_namespace extends StatefulWidget {
  const CPP_namespace({Key? key}) : super(key: key);

  @override
  State<CPP_namespace> createState() => _CPP_namespaceState();
}

class _CPP_namespaceState extends State<CPP_namespace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: cPPTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Why we using namespace std in C++ Programming'),
          const Li(':: - scope resolution operator'),
          const Li(
              'iostream header file kula std endra namespace kula cout entha variable irukum'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code1, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text')
        ],
      ),
    );
  }
}

var code2 = '''
ram25
''';
var code1 = '''
#include<iostream>

/*using std::cout;
using std::cin;
*/
using namespace std;

namespace name1
{
string name="ram";
int age=25;
}
namespace name2
{
string name="ram";
}
using namespace name1;
int main()
{
    /*int a;
    cout<<"Enter The Value of A : ";
    cin>>a;
    cout<<"A Value : "<<a;*/
    cout<<name;
    cout<<age;


    return 0;
}
''';
