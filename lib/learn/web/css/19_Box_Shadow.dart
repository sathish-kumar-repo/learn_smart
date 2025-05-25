import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class BoxShadowProperty extends StatefulWidget {
  const BoxShadowProperty({Key? key}) : super(key: key);

  @override
  State<BoxShadowProperty> createState() => _BoxShadowPropertyState();
}

class _BoxShadowPropertyState extends State<BoxShadowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 19,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Box Shadow'),
          const P(
              'The box-shadow CSS property adds shadow effects around an element\'s frame. You can set multiple effects separated by commas. A box shadow is described by X and Y offsets relative to the element, blur and spread radius, and color.'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html')
        ],
      ),
    );
  }
}

var code1 = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            .box1{
                width: 150px;
                height: 150px;
                background: orangered;
                margin-bottom: 50px;
            }
            .box2{
                width: 150px;
                height: 150px;
                background: aqua;
            }
            .shadow1{
                /* syntax 
                    boxshadow: horizontal offset  vertical offset  blur  spread radius  color
                */
                /* -webkit-box-shadow: 10px 10px 10px 0px rgba(0,0,0,0.5);
                -moz-box-shadow: 10px 10px 10px 0px rgba(0,0,0,0.5); */
                box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.15);
            }

            .shadow2{
                box-shadow: 20px 20px 5px 0px rgba(0,0,0,0.15);
                box-shadow: -20px 20px 5px 0px rgba(0,0,0,0.15);
                box-shadow: 20px -20px 5px 0px rgba(0,0,0,0.15);
                box-shadow: -20px -20px 5px 0px rgba(0,0,0,0.15);
                box-shadow: inset 20px 20px 5px 0px rgba(0,0,0,0.15);

                /* inset means inside the box */
            }

        </style>
    </head>
    
    <body>
        <h1>Box shadow in CSS</h1> 
        <div class="box1 shadow1"></div>  
       
        <div class="box2 shadow2"></div>  
    </body>
</html>
''';
var code = '''
.shadow1{
    /* syntax 
        boxshadow: horizontal offset  vertical offset  blur  spread radius  color
    */
    /* -webkit-box-shadow: 10px 10px 10px 0px rgba(0,0,0,0.5);
    -moz-box-shadow: 10px 10px 10px 0px rgba(0,0,0,0.5); */
    box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.15);
}

.shadow2{
    box-shadow: 20px 20px 5px 0px rgba(0,0,0,0.15);
    box-shadow: -20px 20px 5px 0px rgba(0,0,0,0.15);
    box-shadow: 20px -20px 5px 0px rgba(0,0,0,0.15);
    box-shadow: -20px -20px 5px 0px rgba(0,0,0,0.15);
    box-shadow: inset 20px 20px 5px 0px rgba(0,0,0,0.15);

    /* inset means inside the box */
}
''';
