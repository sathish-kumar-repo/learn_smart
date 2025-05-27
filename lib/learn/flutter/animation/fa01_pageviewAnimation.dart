import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Animation/topicName/flutterAnimationTopic.dart';

import 'Live/01_live.dart';
import 'Live/01_live2.dart';

class PageViewAnimationInFlutter extends StatefulWidget {
  const PageViewAnimationInFlutter({Key? key}) : super(key: key);

  @override
  State<PageViewAnimationInFlutter> createState() =>
      _PageViewAnimationInFlutterState();
}

class _PageViewAnimationInFlutterState
    extends State<PageViewAnimationInFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: flutterAnimationTopics,
        img: 'flutterAnimationI.png',
      ),
      body: MyPage(
        children: [
          const H1('PageView Animation'),
          const H2('Animation using RotateX '),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('Click to View Live'),
          const Live(page: PageViewAnimationLive1()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
          const H3('Click to View Live'),
          const Live(page: PageViewAnimationLive2()),
        ],
      ),
    );
  }
}

var code2 = '''
import 'package:flutter/material.dart';



class PageViewAnimationLive2 extends StatefulWidget {
  const PageViewAnimationLive2({Key? key}) : super(key: key);

  @override
  State<PageViewAnimationLive2> createState() => _PageViewAnimationLive2State();
}

class _PageViewAnimationLive2State extends State<PageViewAnimationLive2> {
  PageController controller = PageController();
  static dynamic currentPageValue = 0.0;
// list of pages
  List pageViewItem = [
    page(currentPageValue, Colors.tealAccent),
    page(currentPageValue, Colors.amber),
    page(currentPageValue, Colors.cyan)
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page View Animation 1"),
        ),
        // PageView builder builds the page.
        body: PageView.builder(
            itemCount: pageViewItem.length,
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemBuilder: (context, position) {
              // Transform using for animation
              return Transform(
                transform: Matrix4.identity()
                  ..rotateZ(currentPageValue - position),
                child: pageViewItem[position],
              );
            }),
      ),
    );
  }
}

// this widget makes the page
Widget page(var pageno, Color color) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.pages,
          color: Colors.white,
        ),
        Text("\${pageno}, Swipe Right or left"),
        Icon(Icons.arrow_right, color: Colors.white),
      ],
    ),
  );
}
''';
var code1 = '''
import 'package:flutter/material.dart'; 

void main() { 
runApp(PageviewAnimation()); 
} 

class PageviewAnimation extends StatefulWidget { 
PageviewAnimation({Key? key}) : super(key: key); 

@override 
State<PageviewAnimation> createState() => _PageviewAnimationState(); 
} 

class _PageviewAnimationState extends State<PageviewAnimation> { 
PageController controller = PageController(); 
static dynamic currentPageValue = 0.0; 

List pageViewItem = [ 
	page(currentPageValue, Colors.tealAccent), 
	page(2, Colors.amber), 
	page(3, Colors.cyan) 
]; 

@override 
void initState() { 
	super.initState(); 
	controller.addListener(() { 
	setState(() { 
		currentPageValue = controller.page; 
	}); 
	}); 
} 

@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	debugShowCheckedModeBanner: false, 
	home: Scaffold( 
		appBar: AppBar( 
		title: Text("Page View Animation 1"), 
		), 
		body: PageView.builder( 
			itemCount: pageViewItem.length, 
			scrollDirection: Axis.horizontal, 
			controller: controller, 
			itemBuilder: (context, position) { 
			return Transform( 
				transform: Matrix4.identity() 
				..rotateX(currentPageValue - position), 
				child: pageViewItem[position], 
			); 
			}), 
	), 
	); 
} 
} 

Widget page(var pageno, Color color) { 
return Container( 
	width: double.infinity, 
	height: double.infinity, 
	color: color, 
	child: Row( 
	mainAxisAlignment: MainAxisAlignment.center, 
	crossAxisAlignment: CrossAxisAlignment.center, 
	children: [ 
		Icon( 
		Icons.pages, 
		color: Colors.white, 
		), 
		Text("\${pageno}, Swipe Right or left"), 
		Icon(Icons.arrow_right, color: Colors.white), 
	], 
	), 
); 
} 
''';
