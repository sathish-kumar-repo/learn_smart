import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/CPP/topicName/cppTopic.dart';

class CPP_Intro extends StatefulWidget {
  const CPP_Intro({Key? key}) : super(key: key);

  @override
  State<CPP_Intro> createState() => _CPP_IntroState();
}

class _CPP_IntroState extends State<CPP_Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: cPPTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Hello World In C++ Programming'),
          const Li('cout - console output'),
          const Li('<< - Insertion operator'),
          const Li('>> - Extraction operator'),
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
Hello World...!
''';
var code1 = '''
#include <iostream>  

using namespace std;

int main()
{
    cout << "Hello world!" << endl; 
    return 0;
}
''';
