import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS Animation/topicName/css100TJAnimation.dart';

class Project10 extends StatefulWidget {
  const Project10({Key? key}) : super(key: key);

  @override
  State<Project10> createState() => _Project10State();
}

class _Project10State extends State<Project10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Underline Animated Navbar'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation10.png'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Roboto Condensed", sans-serif;
}

nav {
  background-color: #333;
  height: 70px;
  width: 100%;
  min-width: 600px;
  margin: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 0px 30px;
}

a {
  color: #a0a0a0;
  text-decoration: none;
  letter-spacing: 0.5px;
  position: relative;
  transition: 0.2s linear;
}

a:hover {
  color: #fff;
}

a::after {
  content: "";
  position: absolute;
  background-color: yellowgreen;
  left: 0;
  bottom: -5px;
  width: 0%;
  height: 2px;
  transition: 0.5s linear;
}

a:hover::after {
  width: 100%;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Underline Animated Navbar</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <a href="#">Home</a>
        <a href="#">Product</a>
        <a href="#">Contact</a>
        <a href="#">Download</a>
        <a href="#">About Us</a>
    </nav>
</body>
</html>
''';
