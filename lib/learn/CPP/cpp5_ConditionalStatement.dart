import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/CPP/topicName/cppTopic.dart';

class CPP_ConditionalStatement extends StatefulWidget {
  const CPP_ConditionalStatement({Key? key}) : super(key: key);

  @override
  State<CPP_ConditionalStatement> createState() =>
      _CPP_ConditionalStatementState();
}

class _CPP_ConditionalStatementState extends State<CPP_ConditionalStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: cPPTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Conditional Statement'),
          const H2('if Statement'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code1, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const H2('if else Statement'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code3, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          const H2('else if Statement'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code5, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code6, type: 'text'),
          const H2('Nested if Statement'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code7, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code8, type: 'text'),
          const H2('Switch Statement'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code9, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code10, type: 'text'),
          const H2('Group Switch Statement'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code11, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code12, type: 'text'),
        ],
      ),
    );
  }
}

var code12 = '''
Enter The Month in Number (1-12)6
Days : 30
''';
var code11 = '''
#include<iostream>

using namespace std;
int main() {
	int m;
	cout << "\\nEnter The Month in Number (1-12)";
	cin >> m;
	switch(m) {
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			cout << "Days : 31" << endl;
			break;
		case 2:
			cout << "Days : 28 | 29" << endl;
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			cout << "Days : 30" << endl;
			break;
		default:
			cout << "Invalid Month Value" << endl;
			break;
	}
	return 0;
}
''';
var code10 = '''
Enter The Month in Number (1-12)10
October
''';
var code9 = '''
#include<iostream>

using namespace std;
int main() {
	int m;
	cout << "\\nEnter The Month in Number (1-12)";
	cin >> m;
	switch(m) {
		case 1:
			cout << "January" << endl;
			break;
		case 2:
			cout << "February" << endl;
			break;
		case 3:
			cout << "March" << endl;
			break;
		case 4:
			cout << "April" << endl;
			break;
		case 5:
			cout << "May" << endl;
			break;
		case 6:
			cout << "June" << endl;
			break;
		case 7:
			cout << "July" << endl;
			break;
		case 8:
			cout << "August" << endl;
			break;
		case 9:
			cout << "September" << endl;
			break;
		case 10:
			cout << "October" << endl;
			break;
		case 11:
			cout << "November" << endl;
			break;
		case 12:
			cout << "December" << endl;
			break;
		default:
			cout << "Invalid Month Value" << endl;
			break;
	}
	return 0;
}
''';
var code8 = '''
Enter Your Age    : 23

Enter Your Gender : Female

Go To Room-6
''';
var code7 = '''
#include<iostream>

using namespace std;
/*
age>=18:
    Male:
        Room-5
    Female:
        Room-6
Not Eligible
*/
int main() {
	char gender;
	int age;
	cout << "\\nEnter Your Age    : ";
	cin >> age;
	if(age >= 18) {
		cout << "\\nEnter Your Gender : ";
		cin >> gender;
		if(gender == 'M' || gender == 'm') {
			cout << "\\nGo To Room-5";
		} else if(gender == 'F' || gender == 'f') {
			cout << "\\nGo To Room-6";
		} else {
			cout << "\\n Invalid Gender Input";
		}
	} else {
		cout << "\\nYour Age is Under 18 You are Not Eligible For Vote...";
	}
	return 0;
}
''';
var code6 = '''
Enter The Value of Hardness,Tensile Strength and Carbon :
50
34
4500
Steel Grade : 5
''';
var code5 = '''
/*
Else If Ladder in C++ :
 
A certain grade of steel is graded according to the following conditions:
 
1. Hardness must be greater than 50.
2. Carbon content must be less than 0.7
3. Tensile strength must be greater than 5600
 
The grades are as follows:
 
Grade is 10, if all three conditions are met.
Grade is 9, if conditions 1 and 2 are met.
Grade is 8, if conditions 2 and 3 are met.
Grade is 7, if conditions 1 and 3 are met.
Grade is 6, if only one condition is met.
Grade is 5, if none of the conditions are met.
*/
#include<iostream>

using namespace std;
int main() {
	int h, t;
	float c;
	cout << "Enter The Value of Hardness,Tensile Strength and Carbon :" << endl;
	cin >> h >> t >> c;
	if(h > 50 && c < 0.7 && t > 5600) {
		cout << "Steel Grade : 10" << endl;
	} else if(h > 50 && c < 0.7) {
		cout << "Steel Grade : 9" << endl;
	} else if(c < 0.7 && t > 5600) {
		cout << "Steel Grade : 8" << endl;
	} else if(h > 50 && t > 5600) {
		cout << "Steel Grade : 7" << endl;
	} else if(h > 50 || c < 0.7 || t > 5600) {
		cout << "Steel Grade : 6" << endl;
	} else {
		cout << "Steel Grade : 5" << endl;
	}
	return 0;
}
''';
var code4 = '''
Enter The Character : s
s is not a Vowel
''';
var code3 = '''
#include<iostream>

using namespace std;
//aeiou AEIOU
int main() {
	char c;
	cout << "Enter The Character : ";
	cin >> c;
	if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
		cout << c << " is a Vowel";
	} else {
		cout << c << " is not a Vowel";
	}
	return 0;
}
''';
var code2 = '''
Enter The Value of A & b :23
56
56 is Greatest Number
''';
var code1 = '''
#include<iostream>

using namespace std;
int main() {
	int a, b;
	cout << "\\\nEnter The Value of A & b :";
	cin >> a >> b; //25,45
	if(a > b) //25>45
	{
		cout << a << " is Greatest Number";
	}
	if(b > a) //45>25
	{
		cout << b << " is Greatest Number";
	}
	if(a == b) //45==25
	{
		cout << a << " and " << b << " are Equal";
	}
	return 0;
}
''';
