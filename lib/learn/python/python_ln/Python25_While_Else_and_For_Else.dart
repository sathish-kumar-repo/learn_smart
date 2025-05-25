import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class While_Else_and_For_Else extends StatefulWidget {
  const While_Else_and_For_Else({Key? key}) : super(key: key);

  @override
  State<While_Else_and_For_Else> createState() =>
      _While_Else_and_For_ElseState();
}

class _While_Else_and_For_ElseState extends State<While_Else_and_For_Else> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 25,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('While Else and For Else'),
          const P(
              'Else block will be executed only if the loop isn\'t terminated by a break statement. The else clause executes after the loop completes normally. This means that the loop did not encounter a break statement. They are really useful once you understand where to use them.'),
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
1
2
3
4
5
Loop Completed
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
11
12
13
14
15
16
17
18
19
20
For Loop Completed
''';
var code1 = '''
# While Else & For Else

i=1
while i<=5:
    #if(i==4):
        #break
    print(i)
    i+=1
else:
    print("Loop Completed")

for i in range(1,21):
    #if i==5:
        #break
    print(i)
else:
    print("For Loop Completed")
''';
