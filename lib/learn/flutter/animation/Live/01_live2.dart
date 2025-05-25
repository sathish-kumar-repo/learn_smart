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
        Text("${pageno}, Swipe Right or left"),
        Icon(Icons.arrow_right, color: Colors.white),
      ],
    ),
  );
}
