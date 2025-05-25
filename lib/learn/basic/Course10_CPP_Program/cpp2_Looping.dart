import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/basic/Course10_CPP_Program/topicName/cpp_program_Topics.dart';

class LoopingProgram extends StatefulWidget {
  const LoopingProgram({Key? key}) : super(key: key);

  @override
  State<LoopingProgram> createState() => _LoopingProgramState();
}

class _LoopingProgramState extends State<LoopingProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: cPPProgramTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Looping Statement Programs'),
          //
          const H2('Question - 1'),
          const P('Program to find the sum of n numbers 3=> 1+2+3=>6'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code1, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          //
          const H2('Question - 2'),

          const P('Program to find the factors of given number'),
          const Li(
              'The numbers that are completely divisible by the given number (it means the remainder should be 0) called as factors of a given number using for loop and if condition. A for loop is a repetition control structure which allows us to write a loop that is executed a specific number of times. The loop enables us to perform n number of steps together in one line. The if statement is the most basic of all the control flow statements. It tells your program to execute a certain section of code only if a particular test evaluates to true.'),
          const H5('Example'),
          Code(title: 'Example', code: eg1, type: 'text'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code3, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          //
          const H2('Question - 3'),
          const P('Program for armstrong number between 100-999'),
          const Li(
              'An Armstrong number is the one whose value is equal to the sum of the cubes of its digits. Armstrong Number is a positive number if it is equal to the sum of cubes of its digits is called Armstrong number and if its sum is not equal to the number then its not a Armstrong number. Armstrong Number Program is very popular in c++.'),
          const H5('Example'),
          Code(title: 'Example', code: eg2, type: 'text'),
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
153
370
371
407
''';
var code5 = '''
#include<iostream>

using namespace std;
int main() {
	int sum = 0, n, t, r;
	for(int i = 100; i <= 999; i++) {
		n = i;
		while(n > 0) //153  15
		{
			r = n % 10; //3  5 1
			sum = sum + (r * r * r); //27 + 125=>152+1
			n = n / 10; //15  1 0
		}
		if(sum == i) {
			cout << i << endl;
		}
		sum = 0;
	}
	return 0;
}
''';
var eg2 = '''
153 => ( 1*1*1 ) + ( 5*5*5 ) + ( 3*3*3 ) = 153 is Armstrong Number
453 => ( 4*4*4 ) + ( 5*5*5 ) + ( 3*3*3 ) = 216 is Not Armstrong Number
''';
var eg1 = '''
 limit = 5
5 , 1 => 5 % 1 = 0
5 , 2 => 5 % 2 = 0
5 , 3 => 5 % 3 = 1
5 , 4 => 5 % 4 = 2
5 , 5 => 5 % 5 = 0
''';
var code4 = '''
Enter The Number : 5
1
5
''';
var code3 = '''
#include<iostream>

using namespace std;
int main() {
	int n;
	cout << "\\nEnter The Number : ";
	cin >> n;
	for(int i = 1; i <= n; i++) {
		if(n % i == 0) cout << i << endl;
	}
	return 0;
}
''';
var code2 = '''
Enter The Limit : 10

Sum of N Number is : 55
''';
var code1 = '''
#include<iostream>

using namespace std;
int main() {
	int n, i, total = 0;
	cout << "\\nEnter The Limit : ";
	cin >> n; //3
	for(i = 1; i <= n; i++) //1 2 3
	{
		total = total + i; //1 3 6
	}
	cout << "\\nSum of N Number is : " << total;
	return 0;
}
''';
