import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridTemplateAreaProperty extends StatefulWidget {
  const GridTemplateAreaProperty({Key? key}) : super(key: key);

  @override
  State<GridTemplateAreaProperty> createState() =>
      _GridTemplateAreaPropertyState();
}

class _GridTemplateAreaPropertyState extends State<GridTemplateAreaProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 65,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Grid Template Area'),
          P('The grid-template-areas property in CSS Grid layout allows you to define named grid areas within a grid container. It enables you to create a grid layout by specifying the placement of grid items in relation to these named grid areas.'),
          P('The grid-template-areas property uses a grid area naming syntax to define the layout of the grid container. The grid area naming syntax consists of a series of strings enclosed in quotation marks, where each string represents a row of the grid. Each string is made up of space-separated names that represent the names of the grid areas within that row.'),
          H3('Example - 1'),
          H4('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          H4('Output'),
          Img(name: 'area-1.png', height: 350),
          H3('Example - 2'),
          H4('Source Code'),
          Code(title: 'index.html', code: code2, type: 'html'),
          Code(title: 'style.css', code: code3, type: 'css'),
          H4('Output'),
          Img(name: 'grid-template-area.jpg', height: 350),
        ],
      ),
    );
  }
}

var code4 = '''
@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;900&display=swap');

*{
  margin: 0;
  padding: 0;
  font-family: 'Rubik', sans-serif;
  box-sizing: border-box;
}
body{
    height: 100vh;
    width: 100vw;
    display: grid;
    grid-template-areas:
     "nav nav nav"
     "head head head"
     "sidebar content content"
     "aside1 aside2 aside3"
     "footer footer footer"
    ;
    grid-template-rows: 50px 200px 1fr 100px 50px;
    grid-template-columns: 1fr 1fr 1fr;
}

#nav,
#header,
#sidebar,
#main,
#aside1,
#aside2,
#aside3,
#footer{
    background-color: orangered;
    color: white;
    padding: 20px;
    border: 1px solid white;
}

#nav{
    grid-area: nav;
}
#header{
    grid-area: head;
}
#sidebar{
    grid-area: sidebar;
}
#main{
    grid-area: content;
}
#aside1{
    grid-area: aside1;
}
#aside2{
    grid-area: aside2;
}
#aside3{
    grid-area: aside3;
}
#footer{
    grid-area: footer;
}    
''';
var code3 = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="18(1)style.css">
</head>
<body>
    <!-- <nav>Navigation</nav>
    <header>Header</header>
    <aside>Side bar</aside> -->

    <div id="nav">Navigation</div>
    <div id="header">Header</div>
    <div id="sidebar">Side bar</div>
    <div id="main">Main Content</div>
    <div id="aside1">Aside 1</div>
    <div id="aside2">Aside 2</div>
    <div id="aside3">Aside 3</div>
    <div id="footer">Footer</div>
</body>
</html>
''';
var code2 = '''
@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;900&display=swap');

*{
margin: 0;
padding: 0;
font-family: 'Rubik', sans-serif;
box-sizing: border-box;
}
body{
    height: 100vh;
    width: 100vw;
    display: grid;
    grid-template-areas:
    "header header header"
    "nav content sidebar"
    "footer footer footer"
    ;
    grid-template-columns: 1fr 4fr 1fr;
    grid-template-rows: 100px 1fr 50px;
}

header,
nav,
main,
aside,
footer{
    background-color: orangered;
    color: white;
    padding: 20px;
    border: 1px solid white;
}

header{
    grid-area: header;
}
nav{
    grid-area: nav;
}
main{
    grid-area: content;
}
aside{
    grid-area: sidebar;
}
footer{
    grid-area: footer;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/17(1)style.css">
</head>
<body>
    <header>Header</header>
    <main>Content</main>
    <nav>Navigation</nav>
    <aside>Side Bar</aside>
    <footer>Footer</footer>
</body>
</html>
''';
