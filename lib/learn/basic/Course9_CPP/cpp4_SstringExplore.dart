import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/basic/Course9_CPP/topicName/cppTopic.dart';

class CPP_String extends StatefulWidget {
  const CPP_String({Key? key}) : super(key: key);

  @override
  State<CPP_String> createState() => _CPP_StringState();
}

class _CPP_StringState extends State<CPP_String> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: cPPTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('std::string class in C++'),
          const Note(
              'String iruntha double quotes , character iruntha single quotes and it is very important in programming language alphabets are not 26 letters its 52 letters because it is case sensitive'),
          const H3('C++ String'),
          const Li('Input Functions'),
          const Li('Capacity Functions'),
          const Li('Iterator Functions'),
          const Li('Manipulating  Functions'),
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
Welcome To C++ Programming Language
Welcome To C++ Programming Language
Sathish Kumar
SathishKumar
Sathish Kumar
S
Rathish Kumar
Enter The String : Welcome
String  : Welcome
Enter The String :
Welcome to cpp
String  : Welcome to cpp
Enter The String :
Welcome
Welcomes
Welcome
Sathish Kumar
Size     : 13
Length   : 13
Max Size : 2147483647
s
a
t
h
i
s
h
------------------------
h
s
i
h
t
a
s
Before X :Ram
Before Y :Sam
After X :Sam
After Y :Ram
''';
var code1 = '''
#include<iostream>

using namespace std;


int main()
{   
    // to declare the string
    string a = "Welcome To C++ Programming Language";
    cout << a << endl;

    // String is a class so declare the object ,pass the val in constructor
    string b("Welcome To C++ Programming Language");
    cout << b << endl;


    // String Concatenation
    string firstName = "Sathish";
    string lastName = "Kumar";
    cout << firstName + " " + lastName << endl;
    string fullName = firstName.append(lastName);
    cout << fullName << endl;

    
    // String Access
    string names = "Sathish Kumar";
    cout << names << endl;
    cout << names[0] << endl;
    names[0] = 'R';
    cout << names << endl;


    //-------------------------------------------------

    //--------------Input Functions------------------------

    string str;
    cout << "Enter The String : ";
    cin >> str;
    cout << "String  : " << str << endl;
    fflush(stdin); // in this program we use string or character then more garbage value to store and this line clear the garbage value
    cout << "Enter The String : " << endl;
    getline(cin, str);
    cout << "String  : " << str << endl;

    // use push_back and pop_back
    string str1;
    cout << "Enter The String : " << endl;
    cin >> str1;
    str1.push_back('s');
    cout << str1 << endl;
    str1.pop_back();
    cout << str1 << endl;

    //-------------------------------------------------

    //--------------Capacity Functions------------------------

    string name("Sathish Kumar");
    cout << name << endl;
    cout << "Size     : " << name.size() << endl;
    cout << "Length   : " << name.length() << endl;
    cout << "Max Size : " << name.max_size() << endl; // max size evlo hold aagiruku , byte la return pannu
    
    
    //-------------------------------------------------

    //--------------Iterator Functions------------------------
    string person = "sathish";
    string::iterator it;
    for(it = person.begin(); it != person.end(); it++) 
        cout << * it << endl;
    
       // person.begin() and  person.end() return address 
       // person.end() -> end address empty
    
    cout << "------------------------" << endl;

    string::reverse_iterator it2;
    for(it2 = person.rbegin(); it2 != person.rend(); it2++) 
        cout << * it2 << endl;
    

    //-------------------------------------------------

    //--------------Manipulating Functions------------------------
    string x = "Ram";
    string y = "Sam";
    cout << "Before X :" << x << endl;
    cout << "Before Y :" << y << endl;
    x.swap(y);
    cout << "After X :" << x << endl;
    cout << "After Y :" << y << endl;


    return 0;
}
''';
