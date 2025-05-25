import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/basic/Course9_CPP/topicName/cppTopic.dart';

class CPP_LoopingStatement extends StatefulWidget {
  const CPP_LoopingStatement({Key? key}) : super(key: key);

  @override
  State<CPP_LoopingStatement> createState() => _CPP_LoopingStatementState();
}

class _CPP_LoopingStatementState extends State<CPP_LoopingStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: cPPTopics,
        img: 'cpp.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Looping Statement'),
          const Li('While'),
          const Li('do While'),
          const Li('For'),
          const Li('For each'),
          //
          const H2('While Loop'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code1, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          //
          const H2('do While Loop'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code3, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          //
          const H2('for Loop'),
          const Li('It is also called Counter Control Loop'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code5, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code6, type: 'text'),
          //
          const H2('for each loop'),
          const H3('Source Code'),
          Code(title: 'main.cpp', code: code7, type: 'cpp'),
          const H4('Output'),
          Code(title: 'terminal', code: code8, type: 'text'),
        ],
      ),
    );
  }
}

var code8 = '''
65
66
67
68
69
70
''';
var code7 = '''
//For Each
#include<iostream>

using namespace std;
int main() {


	// Integer Array
	int a[] = {
		65,
		66,
		67,
		68,
		69,
		70
	};
	for(int x: a) {
		cout << x << endl;
	}

	// Character Array
	char b[] = {
		65,
		66,
		67,
		68,
		69,
		70
	};
	for(char x: b) {
		cout << x << endl;
	}

    // auto
	int c[] = {
		65,
		66,
		67,
		68,
		69,
		70
	};
	// auto is working based upon your value
	for(auto x: c) {
		cout << x << endl;
	}
	return 0;
}
''';
var code6 = '''
Enter The Limit : 10

Enter The Table : 6
6*1=6
6*2=12
6*3=18
6*4=24
6*5=30
6*6=36
6*7=42
6*8=48
6*9=54
6*10=60
''';
var code5 = '''
//For Loop
/*
    n=5
    t=2
    2*1=2
    .
    .
    2*5=10
*/
#include<iostream>

using namespace std;
int main() {
	int i, n, t;
	cout << "\\nEnter The Limit : ";
	cin >> n;
	cout << "\\nEnter The Table : ";
	cin >> t;
	for(i = 1; i <= n; i++) {
		cout << t << "*" << i << "=" << t * i << endl;
	}
	return 0;
}
''';
var code4 = '''
Enter The Limit : 20
2
4
6
8
10
12
14
16
18
20
''';
var code3 = '''
//Do While
#include<iostream>

using namespace std;
int main() {
	int n, i = 1;
	cout << "\\nEnter The Limit : ";
	cin >> n;
	do {
		if(i % 2 == 0) cout << i << endl;
		i++;
	} while(i <= n);
	return 0;
}
''';
var code2 = '''
Enter The Limit : 10

1
2
3
4
5
6
7
8
9
10
''';
var code1 = '''
#include<iostream>

using namespace std;
int main() {
	int i = 1, n;
	cout << "\\nEnter The Limit : ";
	cin >> n;
	while(i <= n) {
		cout << "\\n" << i;
		i++;
	}
	return 0;
}
''';
