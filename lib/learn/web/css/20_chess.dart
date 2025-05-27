import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class ChessProperty extends StatefulWidget {
  const ChessProperty({Key? key}) : super(key: key);

  @override
  State<ChessProperty> createState() => _ChessPropertyState();
}

class _ChessPropertyState extends State<ChessProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 20,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Simple Chess Box'),
          Code(title: 'chess.html', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            html{
                background: grey;
            }
            body{
                width:800px;
                height: 800px;
                background: white;
                margin: 50px auto
                
            }
            .row{
                width:100%;
                height: 100px;
                float: left;

            }
            .box{
                width: 100px;
                height: 100px;
                float: left;
                font-size: 75px;
                
                text-align: center;
            }
            
            .box:hover{
                color:orange;
            }


            .black{
                background: rgb(195, 92, 109);
            }
            .boxshadow{
                box-shadow: 40px 40px 10px 0px rgba(26, 23, 23,0.5);
            }

        </style>
    </head>
    
    <body class="boxshadow">
        <div class="row">
            <div class="box">&#9814;</div>
            <div class="box black">&#9816;</div>
            <div class="box">&#9815;</div>
            <div class="box black">&#9813;</div>
            <div class="box">&#9812;</div>
            <div class="box black">&#9815;</div>
            <div class="box">&#9816;</div>
            <div class="box black">&#9814;</div>
        </div>
        <div class="row">
            <div class="box black">&#9817;</div>
            <div class="box">&#9817;</div>
            <div class="box black">&#9817;</div>
            <div class="box">&#9817;</div>
            <div class="box black">&#9817;</div>
            <div class="box">&#9817;</div>
            <div class="box black">&#9817;</div>
            <div class="box">&#9817;</div>
        </div>
        <div class="row">
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
        </div>
        <div class="row">
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
        </div>
        <div class="row">
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
        </div>
        <div class="row">
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
            <div class="box black"></div>
            <div class="box"></div>
        </div>
        <div class="row">
            <div class="box">&#9823;</div>
            <div class="box black">&#9823;</div>
            <div class="box">&#9823;</div>
            <div class="box black">&#9823;</div>
            <div class="box">&#9823;</div>
            <div class="box black">&#9823;</div>
            <div class="box">&#9823;</div>
            <div class="box black">&#9823;</div>
        </div>
        <div class="row">
            <div class="box black">&#9820;</div>
            <div class="box">&#9822;</div>
            <div class="box black">&#9821;</div>
            <div class="box">&#9819;</div>
            <div class="box black">&#9818;</div>
            <div class="box">&#9821;</div>
            <div class="box black">&#9822;</div>
            <div class="box">&#9820;</div>
        </div>
           
    </body>
</html>
''';
