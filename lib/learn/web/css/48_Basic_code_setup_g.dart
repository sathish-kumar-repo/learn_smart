import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class GridLayoutIntroProperty extends StatefulWidget {
  const GridLayoutIntroProperty({Key? key}) : super(key: key);

  @override
  State<GridLayoutIntroProperty> createState() =>
      _GridLayoutIntroPropertyState();
}

class _GridLayoutIntroPropertyState extends State<GridLayoutIntroProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 47,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Intro'),
          const H3('Flexbox VS CSS Grids'),
          const Img(name: 'flex-vs-grid.jpg', height: 300),
          const H3('CSS Grids Terminology'),
          const Img(name: 'grid-container.jpg', height: 300),
          const Img(name: 'grid-track.jpg', height: 300),
          const Img(name: 'grid-area.jpg', height: 300),
          const H2('Basic Code Set Up'),
          Code(title: 'basicCode.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'grid-basic-code.jpg', height: 300),
        ],
      ),
    );
  }
}

var code2 = '''
@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;900&display=swap');

*{
  margin: 0;
  padding: 0;
  font-family: 'Rubik', sans-serif;
  box-sizing: border-box;
}

.container{
  border:5px solid black;
  margin: 20px;
}

.grid-item{
  color:white;
  font-size: 18px;
  padding: 16px;
  text-align: center;
}

.box-1{background-color: #1abc9c;}
.box-2{background-color:#3498db;}
.box-3{background-color: #2ecc71;}
.box-4{background-color: #9b59b6;}
.box-5{background-color:#34495e;}
.box-6{background-color:#2980b9;}
.box-7{background-color:#e74c3c;}
.box-8{background-color: #d35400;}
.box-9{background-color:#2c3e50;}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="01(1)style.css">
</head>
<body>
  <div class="container">
    <div class="grid-item box-1">Box-1</div>
    <div class="grid-item box-2">Box-2</div>
    <div class="grid-item box-3">Box-3</div>
    <div class="grid-item box-4">Box-4</div>
    <div class="grid-item box-5">Box-5</div>
    <div class="grid-item box-6">Box-6</div>
    <div class="grid-item box-7">Box-7</div>
    <div class="grid-item box-8">Box-8</div>
    <div class="grid-item box-9">Box-9</div>
  </div>
</body>
</html>
''';
