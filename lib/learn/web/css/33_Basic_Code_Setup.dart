import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class Basic_CodeProperty extends StatefulWidget {
  const Basic_CodeProperty({Key? key}) : super(key: key);

  @override
  State<Basic_CodeProperty> createState() => _Basic_CodePropertyState();
}

class _Basic_CodePropertyState extends State<Basic_CodeProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 32,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Basic Code Setup'),
          Code(title: 'basicCode.html', code: code1, type: 'html'),
          Code(title: 'Style.css', code: code2, type: 'css'),
          const Img(name: 'basic_code', height: 300),
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

}

.container{
  border:5px solid black;
}

.flex-item{
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
      <link rel="stylesheet" href="02(1)style.css">
    </head>
    <body>
      <div class="container">
        <div class="flex-item box-1">Box-1</div>
        <div class="flex-item box-2">Box-2</div>
        <div class="flex-item box-3">Box-3</div>
        <div class="flex-item box-4">Box-4</div>
        <div class="flex-item box-5">Box-5</div>
        <div class="flex-item box-6">Box-6</div>
        <div class="flex-item box-7">Box-7</div>
        <div class="flex-item box-8">Box-8</div>
        <div class="flex-item box-9">Box-9</div>
      </div>
    </body>
</html>
''';
