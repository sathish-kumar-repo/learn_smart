import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/basic/Course10_CPP_Program/topicName/cpp_program_Topics.dart';

class ifStatementProgram extends StatefulWidget {
  const ifStatementProgram({Key? key}) : super(key: key);

  @override
  State<ifStatementProgram> createState() => _ifStatementProgramState();
}

class _ifStatementProgramState extends State<ifStatementProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: cPPProgramTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Conditional Statement Programs'),
          const H2('Question - 1'),
          const P(
              'If his basic salary is less than Rs. 1500,If his salary is either equal to or above Rs. 1500, then HRA = Rs. 500 and DA = 98% of basic salary.If the employee\'s salary is input through the keyboardwrite a program to find his gross salary'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code1, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          //
          const H2('Question - 2'),
          const P('A company insures its drivers in the following cases:'),
          const Li('If the driver is married.'),
          const Li('If the driver is unmarried, male & above 30 years of age.'),
          const Li(
              'If the driver is unmarried, female & above 25 years of age.'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code3, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          //
          const H2('Question - 3'),
          const P(
              'A library charges a fine for every book returned late. For first 5 days the fine is 50 paise, for 6-10 days fine is one rupee and above 10 days fine is 5 rupees. If you return the book after 30 days your membership will be cancelled. Write a program to accept the number of days the member is late to return the book and display the fine or the appropriate message.'),
          const Li('>0 <=5  /0.50'),
          const Li('>=6 <=10  /1'),
          const Li('>10 <=30 /5'),
          const Li('>30'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code5, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code6, type: 'text'),
          //
          // const H2(  'Question - '),
          // const p(  'text'),
          // const H3(  'Source Code'),
          // Code(title: 'main.cpp', code: code, type: 'cpp'),
          // const H4(  'Output'),
          // Code(title: 'terminal', code: code, type: 'text'),
        ],
      ),
    );
  }
}

var code = '''''';
var code6 = '''
Enter the number of days:6

Per Day Fine Amount is : 1
Total Fine Amount is : 6
''';
var code5 = '''
#include<iostream>

using namespace std;
int main() {
	int days;
	cout << "Enter the number of days:";
	cin >> days;
	if(days > 0 && days <= 5) {
		cout << "\\nPer Day Fine Amount is : 0.50";
		cout << "\\nTotal Fine Amount is : " << days * 0.50;
	} else if(days >= 6 && days <= 10) {
		cout << "\\nPer Day Fine Amount is : 1";
		cout << "\\nTotal Fine Amount is : " << days * 1;
	} else if(days > 10 && days <= 30) {
		cout << "\\nPer Day Fine Amount is : 5";
		cout << "\\nTotal Fine Amount is : " << days * 5;
	} else {
		cout << "\\nmembership will be cancelled.";
	}
	return 0;
}
''';
var code4 = '''
Enter Marital Status : M as Married | U as Unmarried : U

Enter Gender : M as Male | F as Female : F

Enter Age : 27

You are Eligible For Insurance
''';
var code3 = '''
#include<iostream>

using namespace std;
int main() {
	char marital, gender;
	int age;
	cout << "\\nEnter Marital Status : M as Married | U as Unmarried : ";
	cin >> marital;
	if(marital == 'M' || marital == 'm') {
		cout << "\\nYou are Eligible For Insurance";
	} else if(marital == 'U' || marital == 'u') {
		cout << "\\nEnter Gender : M as Male | F as Female : ";
		cin >> gender;
		cout << "\\nEnter Age : ";
		cin >> age;
		if(((gender == 'M' || gender == 'm') && age >= 30) || ((gender == 'F' || gender == 'f') && age >= 25)) {
			cout << "\\nYou are Eligible For Insurance";
		} else {
			cout << "\\nYou are Not Eligible For Insurance...";
			cout << "\\nor";
			cout << "\\nInvalid Gender Input....";
		}
	} else {
		cout << "\\nInvalid Marital Input....";
	}
	return 0;
}
/*
((gender=='M' || gender=='m')&&age>=30)
                ||
((gender=='F' || gender=='f')&&age>=25)
 
*/
''';
var code2 = '''
Enter Your Basic Salary : 15000

Basic Salary    :15000
HRA             :500
DA              :14700
---------------------------
Gross Salary    :30200
''';
var code1 = '''

#include<iostream>

using namespace std;
int main() {
	float bs, gs, da, hra;
	cout << "\\nEnter Your Basic Salary : ";
	cin >> bs;
	if(bs < 1500) {
		hra = bs * 10 / 100;
		da = bs * 90 / 100;
	} else {
		hra = 500;
		da = bs * 98 / 100;
	}
	gs = bs + hra + da;
	cout << "\\nBasic Salary    :" << bs;
	cout << "\\nHRA             :" << hra;
	cout << "\\nDA              :" << da;
	cout << "\\n---------------------------";
	cout << "\\nGross Salary    :" << gs;
	return 0;
}
''';
