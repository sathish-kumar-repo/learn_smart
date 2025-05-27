import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/CPP/topicName/cppTopic.dart';

class CPPInputGetting extends StatefulWidget {
  const CPPInputGetting({Key? key}) : super(key: key);

  @override
  State<CPPInputGetting> createState() => _CPPInputGettingState();
}

class _CPPInputGettingState extends State<CPPInputGetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: cPPTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Getting Inputs in C++ Programming'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code1, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
        ],
      ),
    );
  }
}

var code2 = '''
Enter The Integer Value :
3
Value of A is : 3
Enter The Integer Value :
3
5
Total is : 8
Enter The Float Value :
33.33
44.44
Total is : 77.77

Enter The Character : c
Character is : c
Enter The String : sathish Kumar
sathish
Enter The Para : I am programmer
I am programmer
''';
var code1 = '''
#include<iostream>

using namespace std;


int main()
{

    // to get one int input from user
    int a;
    cout<<"Enter The Integer Value : "<<endl;
    cin>>a; 
    cout<<"Value of A is : "<<a<<endl;

    // to get two int input from user
    int c,b;
    cout<<"Enter The Integer Value : "<<endl;
    cin>>c>>b;
    cout<<"Total is : "<<c+b<<endl;


    // to get float input from user
    float d,e;
    cout<<"Enter The Float Value : "<<endl;
    cin>>d>>e;
    cout<<"Total is : "<<d+e<<endl;


    // to get char input from user
    char f;
    cout<<"\\nEnter The Character : ";
    cin>>f;
    cout<<"Character is : "<<f;

    // to get string input from user
    string l;

    cout<<"\\nEnter The String : "; // but space is not taken and also after the String
    cin>>l;
    cout<<l;

    // to get line input from user
    string p;
    cout<<"\\nEnter The Para : "; // cin use panni input vanga poren
    getline(cin,p);// getline(input_stream, variable_to_store_the_val)
    cout<<p;

    return 0;
}
''';
